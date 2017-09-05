var DTToken = artifacts.require("./DreamTeamToken.sol");

module.exports = function(deployer) {
  deployer.deploy(DTToken);
};
