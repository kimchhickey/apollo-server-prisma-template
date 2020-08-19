open ApolloServer

let server = ApolloServer.apolloServer({
  typeDefs,
  resolvers,
  context: createContext
});

server->listen()
|> Js.Promise.then_(({ url }) => {
  Js.log2("🚀  Server ready at ", url)
  Js.Promise.resolve(None)
})
|> Js.Promise.catch(e => {
  Js.log(e)
  Js.Promise.resolve(None)
})
