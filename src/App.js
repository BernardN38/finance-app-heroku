import React from 'react';
import './App.css';
import ResponsiveAppBar from "./Components/Navbar"
import ResponsiveGrid from "./Components/ResponsiveGrid";
function App() {
  return (
    <div className="App">
      <ResponsiveAppBar/>
      <ResponsiveGrid/>
    </div>
  );
}

export default App;
