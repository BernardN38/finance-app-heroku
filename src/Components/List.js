import React, { useEffect, useState } from "react";
import List from "@mui/material/List";
import ListItem from "@mui/material/ListItem";
import ListItemText from "@mui/material/ListItemText";
import ListSubheader from "@mui/material/ListSubheader";
import axios from "axios";

export default function PinnedSubheaderList({ index }) {
  const[data, setData] = useState([]);
  const types = ["balance", "deposits", "withdrawls"];
  useEffect(() => {
    const resData = [];

    axios
      .post(`http://0.0.0.0:8000/api/transactions?type=${types[index]}`)
      .then((response) => {
        response.data.map((element) => {
          resData.push(element);
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
      {[0, 1, 2, 3, 4].map((sectionId) => (
        <li key={`section-${sectionId}`}>
          <ul>
            <ListSubheader>{`${types[index]} by date`}</ListSubheader>
            {data.map((item) => (
              <ListItem key={`item-${sectionId}-${item}`}>
                <ListItemText primary={` Date:${item.date} Amount:-$${item[types[index]]}`} />
              </ListItem>
            ))}
          </ul>
        </li>
      ))}
    </List>
  );
}
