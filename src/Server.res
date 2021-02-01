open Express
open ApolloServer

let app = express()

let server = apolloServer({
  "typeDefs": Node.Fs.readFileAsUtf8Sync("schema.graphql"),
  "context": Context.make,
  "resolvers": {
    "Query": {
      users: User.getUsers,
      user: User.getUser,
    },
    "Mutation": {
      createUser: User.createUser,
    },
  },
})

server->applyMiddleware({app: app})

let onListen = e =>
  switch e {
  | exception Js.Exn.Error(e) =>
    Js.log(e)
    Node.Process.exit(1)
  | _ => Js.log("Listening at http://127.0.0.1:3000/graphql")
  }

App.get(app, ~path="/", Middleware.from((_req, _next) => Response.sendString("Hello World!")))
