// import React from 'react';
// import './CSS/AnimatedBackground.css'; // Import the CSS file
// import background from './Materials/background.gif'; 
// import LoadingIcon from './Materials/Loading_icon.gif'; 


// const AnimatedBackground = () => {
//   return (
//     <div className="animated-background">
//       <h1 style={{ color: 'white' }}></h1>
//       <img src={background} alt="Animated Background" className="background-gif" />
//     </div>
//   );
// };

// export default AnimatedBackground;


import React, { useEffect, useState } from 'react';
import './CSS/AnimatedBackground.css'; // Import the CSS file
import background from './Materials/background.gif'; 
import LoadingIcon from './Materials/Loading_icon.gif'; 

const AnimatedBackground = ({ onAnimationComplete }) => {
  const [showLoadingIcon, setShowLoadingIcon] = useState(false);
  const [animationActive, setAnimationActive] = useState(true);


  useEffect(() => {
   
    const animationTimer = setTimeout(() => {
        setAnimationActive(false); // Disable animation after 5 seconds
        onAnimationComplete(true); // Notify parent that animation is complete
      }, 3000); // Disable animation

    return () => clearTimeout(animationTimer); // Clean up the timer on unmount
  }, [animationActive, onAnimationComplete]);

  return (
    <div>
      {animationActive ? (
        <div className="loading-animation">
          <img src={LoadingIcon} alt="Loading..." className="loading-icon" />
          <h1 style={{ marginTop: '10px' }}>Welcome to Courseify!</h1>
         
        </div>
      ) : (
        <div className="animated-background">
          <img src={background} alt="Animated Background" className="background-gif" />
        </div>
      )}
    </div>
  );
      }
export default AnimatedBackground;