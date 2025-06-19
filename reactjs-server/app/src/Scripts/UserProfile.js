import React from 'react';

function UserProfile() {
  const user = {
    name: 'RUNOOB',
    age: 25,
    location: '中国',
  };

  return (
    <div>
      <h2>{user.name}</h2>
      <p>Age: {user.age}</p>
      <p>Location: {user.location}</p>
    </div>
  );
}

export default UserProfile;