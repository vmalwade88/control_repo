class profile::agent_nodes {
   include dockeragent 
   dockeragent::node { 'web.puppet.com': }
   dockeragent::node { 'db.puppet.com': }
}
