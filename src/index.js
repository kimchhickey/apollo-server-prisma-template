const { ApolloServer } = require('apollo-server')
const { typeDefs, resolvers } = require('./db/schema')
const { createContext } = require('./context')

const server = new ApolloServer({
  typeDefs,
  resolvers,
  tracing: true,
  context: createContext,
})

server.listen().then(({ url }) => {
  console.log(`🚀  Server ready at ${url}`)
})
