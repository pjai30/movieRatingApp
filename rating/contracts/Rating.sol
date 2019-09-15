//pragma solidity ^0.5.8;
pragma experimental ABIEncoderV2;
// We have to specify what version of compiler this code will compile with

contract Rating {
  /* mapping field below is equivalent to an associative array or hash.
  */
  
  mapping (string => uint8) public ratingsReceived;
  
  /* We will use an array of bytes32 to store the list of movies
  */
  
  string[] public movieList;

  /* This is the constructor which will be called once when you
  deploy the contract to the blockchain. When we deploy the contract,
  we will pass an array of movies for which users will give ratings
  */
  constructor(string[] memory movieNames) public {
    movieList = movieNames;
  }

  // This function returns the total ratings a movie has received so far
  function totalVotesFor(string memory movie) view public returns (uint8) {
    return ratingsReceived[movie];
  }

  // This function increments the vote count for the specified movie. Equivalent to upvoting
  function voteForMovie(string memory movie) public {
    ratingsReceived[movie] += 1;
  }
}
