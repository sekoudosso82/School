import React from 'react';
import logo from './logo.svg';
import tom from "./image/tom.jpeg";
import './App.css';

function App() {
  return (
    <div className="App">
      <h1>BIENVENUE Á BEL AIR COLLEGE</h1>
      <h2>UNE NOUVELLE REVOLUTION DE L'EDUCATION</h2>
      <img className='homeImage' src={tom} alt="tom"/>
      
    </div>
  );
}

export default App;
