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
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December",
  ];
  const types = ["balance", "deposits", "withdrawls"];
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
        max: max * 0.35,
        min: min * 1.1,
      },
    },
  };
  function showData() {
    console.log(data);
  }
  useEffect(() => {
    const resData = [];

    axios
      .post(`https://0.0.0.0:8000/api/transactions?type=${types[index]}`)
      .then((response) => {
        console.log(response.data)
        response.data.map((element) => {
          resData.push(element[types[index]]);
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
