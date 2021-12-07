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
import { amber } from "@mui/material/colors";

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
  // const labels = [
  //   "January",
  //   "February",
  //   "March",
  //   "April",
  //   "May",
  //   "June",
  //   "July",
  //   "August",
  //   "September",
  //   "October",
  //   "November",
  //   "December",
  // ];
  const types = ["balance", "deposit", "withdrawal"];
  let arr = Object.values(data);
  let max = Math.max(...arr);
  let min = Math.min(...arr);
  const options = {
    responsive: true,
    plugins: {
      legend: {
        position: "top",
      },
      title: {
        display: true,
        text: `${types[index]} history`,
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
      .post(`http://0.0.0.0:8000/api/transactions/sum?type=${types[index]}`)
      .then((response) => {
        console.log(response.data)
        labels.map((month) => {
          resData.push(response.data[month]);
        });
        setData(resData);
        console.log(Math.max(...resData));
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
              label: types[index],
              data: Object.values(data),
              borderColor: "rgb(255, 99, 132)",
              backgroundColor: "rgba(255, 99, 132, 0.5)",
            },
          ],
        }}
      />
      <button onClick={showData}> button</button>
    </div>
  );
}
