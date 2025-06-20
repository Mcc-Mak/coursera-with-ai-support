import logo from '../logo.svg';
import '../App.css';

import UserProfile from '../Scripts/UserProfile';
import NavigationBar from '../Scripts/NavigationBar';

import Chatbot from '../Scripts/Chatbot';
import AnimatedBackground from '../Scripts/AnimatedBackground';
import React, { useState } from 'react';
import CreateCourse from '../Scripts/CreateCourse';

function Home() {
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
    </div>
  );
}

export default Home;
