import React, { useEffect, useState } from "react";
import List from "@mui/material/List";
import ListItem from "@mui/material/ListItem";
import ListItemText from "@mui/material/ListItemText";
import ListSubheader from "@mui/material/ListSubheader";
import axios from "axios";
import {v4 as uuid} from "uuid";

export default function PinnedSubheaderList({ index }) {
  const[data, setData] = useState([]);
  const types = ["balance", "deposit", "withdrawal", "retirement", "net_worth"];
  useEffect(() => {
    const resData = [];
    
    axios
      .get(`http://localhost:8000/api/transactions/limit?type=${types[index]}&limit=20&retirement=${types[index] ==="retirement"? "true":"false" }`)
      .then((response) => {
        response.data.map((element) => {
          return resData.push(element);
        });
        setData(resData);
      })
      .catch((e) => {
        console.log(e);
      });
  }, []);
  console.log(data)
  return (
    <List
      sx={{
        width: "100%",
        bgcolor: "background.paper",
        position: "relative",
        overflow: "auto",
        maxHeight: 200,
        "& ul": { padding: 0 },
      }}
      subheader={<li />}
    >
      {[0].map((sectionId) => (
        <li key={`section-${sectionId}`}>
          <ul>
            <ListSubheader>{`${types[index]} by date`}</ListSubheader>
            {data.map((item) => (
              <ListItem key={uuid()}>
                <ListItemText primary={` Date:${item.date} Amount: $${item[types[index]]||item["withdrawal"]}`} />
              </ListItem>
            ))}
          </ul>
        </li>
      ))}
    </List>
  );
}
