type t
type config<'schema, 'context> = {
  schema: 'schema,
  context: 'context,
}

type middlewareOptions = {app: Express.App.t}

@bs.new @bs.module("apollo-server-express")
external apolloServer: 'config => t = "ApolloServer"

@bs.send
external applyMiddleware: (t, middlewareOptions) => unit = "applyMiddleware"
