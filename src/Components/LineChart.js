import React, { useState, useEffect } from "react";
import axios from "axios";
import {
  Chart as ChartJS,
  CategoryScale,
  LinearScale,
  PointElement,
  LineElement,
  Title,
  Tooltip,
  Legend,
} from "chart.js";
import { Line } from "react-chartjs-2";
import Capitalize from "../helpers/Capitalize"

ChartJS.register(
  CategoryScale,
  LinearScale,
  PointElement,
  LineElement,
  Title,
  Tooltip,
  Legend
);

export default function LineChart({ index }) {
  const [data, setData] = useState([]);
  const labels = [
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "May",
    "Jun",
    "Jul",
    "Aug",
    "Sep",
    "Oct",
    "Nov",
    "Dec",
]
  const types = ["balance", "deposit", "withdrawal", "retirement", "net_worth", "assests"];

  const options = {
    responsive: true,
    plugins: {
      legend: {
        position: "top",
      },
      title: {
        display: true,
        text: `${Capitalize(types[index]).replace("_", " ")} history`,
      },
    },
    scales: {
      y: {
        // max: max *  1,
        min: 0,
      },
      x: {
        // ticks: {
        //     callback: function(val, index) {
        //     // Hide the label of every 2nd dataset
        //     return index % 2 === 0 ? this.getLabelForValue(val) : '';
        //   },
        //   color: 'red',
        // }
      }
    },
  };
  function showData() {
    console.log(data);
  }
  useEffect(() => {
    const resData = [];

    axios
      .get(`http://financeapp123.herokuapp.com/api/transactions/sum?type=${types[index]}`)
      .then((response) => {

        labels.map((month,idx) => {
          if (types[index] === 'retirement'){
            return resData.push(Math.floor((response.data[month] + resData[idx-1]||0) * 1.007))
          } else {
            return resData.push(response.data[month]);
          }
        });
        console.log(resData, types[index] )
        setData(resData);
      })
      .catch((e) => {
        console.log(e);
      });
  }, []);

  return (
    <div>
      <Line
        options={options}
        data={{
          labels,
          datasets: [
            {
              label: `${Capitalize(types[index]).replace("_", " ")}`,
              data: Object.values(data),
              borderColor: "rgb(255, 99, 132)",
              backgroundColor: "rgba(255, 99, 132, 0.5)",
            },
          ],
        }}
      />
      {/* <button onClick={showData}> button</button> */}
    </div>
  );
}
