import logo from '../logo.svg';
import '../App.css';

import UserProfile from '../Scripts/UserProfile';
import NavigationBar from '../Scripts/NavigationBar';

import Chatbot from '../Scripts/Chatbot';
import AnimatedBackground from '../Scripts/AnimatedBackground';
import React, { useState } from 'react';
import CreateCourse from '../Scripts/CreateCourse';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';

function Create() {
  const [animationActive, setAnimationActive] = useState(false);
  return (
    <div className="App" >
      {animationActive && (
        <>
          <NavigationBar />
        </>
      )}
      <AnimatedBackground
        onAnimationComplete={setAnimationActive}
      />
      {animationActive && (
        <>
          <Chatbot />
        </>
      )}
      {animationActive && (
        <div className='grid-overlay '>
          <CreateCourse />
        </div>
      )}
    </div>
  );
}

export default Create;


