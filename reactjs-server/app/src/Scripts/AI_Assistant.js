import { useState } from "react";
import "./CSS/AI_Assistant.css"
import usericon from './Materials/test_user.jpg'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faArrowRight,faX} from '@fortawesome/free-solid-svg-icons';

import {  useEffect, useRef } from 'react';

import LoadingIcon from './Materials/Loading_icon.gif'; 
import SmartToyIcon from '@mui/icons-material/SmartToy';
import welcome_audio from './Audio/output.mp3';

//npm install axios

// function Counter(){
//     const [count,setCount] = useState(0);
//     const userName = "Benny";
//     const handleClick = () =>{
//         setCount(100);

//     };

//     return (
//         <div>

//         <div>
//         <h1>Click count:{count}</h1>
//         <button onClick={handleClick} >Click</button>   
//         </div>

        
//         <label className="username">{userName}</label>
        
     
//         <br /> 

//         <div style={{ display: 'flex', alignItems: 'flex-start', justifyContent: 'center'  }}>
//         <label>
//         <textarea className='inputbox' name="postContent" placeholder='Ask questions!' rows={4} cols={40} />
//         </label> 
//         <br />
//         <button className="inputbutton"  ><FontAwesomeIcon icon={faArrowRight} /></button>   
//         </div>

//         </div>

//     );


// };

// export default Counter;



function Dialogue(){
        

        const userName = "Benny";
        const botName = "AI Teacher";
        const WelcomeMessage = (
            <div key={`reply-msg-${-1}`} className="reply_message relative mt-6 flex-1 px-4 sm:px-6 whitespace-pre-wrap">
                 <div className="chatbot_name_label"><SmartToyIcon style={{ marginRight: '5px' }} />{botName}:</div> <br/>Greetings! I'm David, an artificial intelligence assistant created by Courseify. I'm at your service and would be delighted to assist you with any inquiries or tasks you may have.<br/>
                 <audio controls>
                    <source src={welcome_audio} type="audio/mpeg" />
                </audio>
                 <br/>(Reply Message Index: {-1}) 
              </div>);
        const [inputValue, setInputValue] = useState('');
        const [messages, setMessages] = useState([]);
        const [replyMessages, setReplyMessages] = useState([]);
        const [index, setCurrentIndex] = useState(0);
        const [reply_index, setCurrentReplyIndex] = useState(0);


        const messagesEndRef = useRef(null); // Reference for the end of messages
        const [messageElements,setMsg] = useState([]);
        const [receive_reply,setReceiveReply] = useState(false);
        // const messageElements =[]; 
        let currentIndex = useRef(0);
        let timeout= (delay)=> {
            return new Promise( res => setTimeout(res, delay) );
        }
        const clearInput = () => {
            setInputValue('');
          };

          const handleKeyDown = (e) => {
            if (e.key === 'Enter' && !e.altKey) {
                handleSendMessage();
                e.preventDefault();
            }
          };
        
        const PostPrompt = async (p) => {
                
            
            return await  fetch('https://e8b0-223-17-27-187.ngrok-free.app/messages', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json'
                        //, 'Authorization': 'Bearer YOUR_TOKEN' // Optional: Include if needed
                    },
                    body: JSON.stringify({ "message":p })
                })
                .then(response => response.json())
                .then(data => {
                    console.log('Success:', data['response']);
                    console.log("ReplyMessages:"+data['response'])
                    setReceiveReply(true);
                    return data['response']; 
                    
                })
                .catch((error) => {
                    console.error('Error:', error);
                    
                    return null; // Return null in case of error
                });
            }
       




        const handleInputChange =  (e) => {
           setInputValue(e.target.value);

        };
        



        const answerQuestion = async (question)=>
        {

          
            // setCurrentIndex(index+1); // Update the reply index
            // setReplyMessages([...replyMessages, "Test"]);
            const reply = await PostPrompt(inputValue);
            if (reply) {
               
            if(!reply.trim()){return;}
            
            
            setReplyMessages([...replyMessages,reply]);
            
            
            setCurrentReplyIndex(reply_index+1);
            
           
        //     const newReplyMessage = (
        //         <div key={`reply-msg-${replyMessages.length-1}`} className="reply_message relative mt-6 flex-1 px-4 sm:px-6 whitespace-pre-wrap">
        //              <div className="chatbot_name_label">{botName}:</div> <br/>{replyMessages[replyMessages.length-1]} (Reply Message Index: {replyMessages.length-1}) 
        //           </div>
        //     );
        //     //     messageElements.push(
        //     //        newReplyMessage
        //     //    );
        //   if(replyMessages.length>0){
        //     console.log("R "+replyMessages[replyMessages.length-1])
        //     setMsg((messageElements)=>[...messageElements,newReplyMessage]);
            
        //   }
            
            
            }
           
    
    
        };

       

        const handleSendMessage =  () => {
            
            if (!inputValue.trim()||inputValue.length<1) return; // Prevent sending empty messages
              
               console.log("Messages:"+messages)
             
                setMessages([...messages, inputValue]);
                
                setCurrentIndex(index+1); // Update the reply index
                

                
                
                // if( messages[messages.length-1]==undefined|| messages[messages.length-1]==null){return;}
                // const newMessage = (
                //     <div key={`msg-${messages.length-1}`} className="message relative mt-6 flex-1 px-4 sm:px-6 whitespace-pre-wrap">
                //     <div className="username_label">{userName}:</div> <br/>{messages[messages.length-1]} (Message Index: {messages.length-1}) 
                //     {/* <img src={LoadingIcon} alt="Animated Background"  /> */}
                // </div>
                // );
                
                
                
                // // messageElements.push(
                // //       newMessage
                // //    );
                // if(messages.length>0){
                //     console.log("U "+messages[messages.length-1])
                // setMsg((messageElements)=>[...messageElements,newMessage]);
                // }
                answerQuestion(messages[index-1]);
                setInputValue(''); // Clear the input after sending
                
              
                
                 
                                  
                  
                    
                    
                 
                   
               
                
            
            
        };


  
        //    if(index>currentIndex)
        //    {
        //     answerQuestion(messages[messages.length-1]);
        //     currentIndex=index;
        //    }
           if (messageElements.length<1)
           {
            setMsg((messageElements)=>[...messageElements,WelcomeMessage]);

           }
           console.log("Messages: "+messageElements.length);
           console.log("Reply Messages: "+replyMessages.length);
           console.log("User Messages: "+messages.length);
           
   
     

        // const userMessages = <div key={index} className="message">
        //         {userName}: {msg}
        //     </div>;
    
        // const botReplies = replyMessages.map((reply, idx) => (
        //     <div key={idx} className="reply_message">
        //         {botName}: {reply}
        //     </div>
        // ));
    
       

        // Scroll to the bottom of the messages whenever messages change



        useEffect(() => {

            
           
                
            if (messagesEndRef.current) {
                messagesEndRef.current.scrollIntoView({ behavior: 'smooth' });
            }
                  
            if(receive_reply)
            {
                
                const newMessage = (
                    <div key={`msg-${index-1}`} className="message relative mt-6 flex-1 px-4 sm:px-6 whitespace-pre-wrap">
                    <div className="username_label">{userName}:</div> <br/>{messages[index-1]} (Message Index: {index-1}) 
                    {/* <img src={LoadingIcon} alt="Animated Background"  /> */}
                </div>
                );
                setMsg((messageElements)=>[...messageElements,newMessage]);
                const newReplyMessage = (
                    <div key={`reply-msg-${reply_index-1}`} className="reply_message relative mt-6 flex-1 px-4 sm:px-6 whitespace-pre-wrap">
                         <div className="chatbot_name_label"><SmartToyIcon style={{ marginRight: '5px' }} />{botName}:</div> <br/>{replyMessages[reply_index-1]} (Reply Message Index: {reply_index-1}) 
                      </div>
                );
                setMsg((messageElements)=>[...messageElements,newReplyMessage]);
                console.log("Receive reply");
                setReceiveReply(false);

            };


        }, [messageElements,receive_reply]);

        // // Scroll to the bottom of the messages whenever messages change
        // useEffect(() => {
        //     if (messagesEndRef.current) {
        //         messagesEndRef.current.scrollIntoView({ behavior: 'smooth' });
        //     }
        // }, [replyMessages]);

        return (


    <div className='flex'>
        <div className='dialogue'>

     
    
        <br /> 
        <div className="dialogue-container">
      
        <div className="messages">
                {/* {messages.map((msg, index) => (
                    <div key={index} className="message">
                       {userName}: {msg}
                    </div>
                ))}
             {replyMessages.map((m, idx) => (
                            <div key={idx} className="reply_message">
                                {botName}: {m}
                            </div>
                        ))} */}

        {messageElements} 

                
        <div ref={messagesEndRef} />
        


        </div>
        </div>

        <div className="item">
        <div className="usersection">
        <label className="username">{userName} </label>
        <br />
        <img className ='usericon' src={ usericon}  alt="User" />
        </div>

  
        <textarea className='inputbox inputtext' name="postContent" value={inputValue}  onChange={handleInputChange} onKeyDown={handleKeyDown} placeholder='Ask questions!'  />

      <div className="buttonSection">
        {inputValue && (
        <button className="clear-button " onClick={clearInput}>
          <FontAwesomeIcon icon={faX} />
        </button>
      )}
      </div>

        <br />
        <button className="inputbutton" onClick={handleSendMessage} ><FontAwesomeIcon icon={faArrowRight} /></button>   



        </div>

        


        </div>

    </div>

    );
            

};

export default Dialogue;
