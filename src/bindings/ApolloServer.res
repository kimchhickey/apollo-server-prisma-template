module TypeDefs = {
  type t
}

module Resolver = {
  type t
}

module Prisma = {
  type t
}

type apolloConfig = {
  typeDefs: TypeDefs.t,
  resolvers: Resolver.t,
  context: Prisma.t
}

type apolloInstance = {
  url: string
}

module Server = {
  type t
}

@bs.new @bs.module("apollo-server")
external apolloServer: apolloConfig => Server.t = "ApolloServer"

@bs.module("../db/schema")
external typeDefs: TypeDefs.t = "typeDefs"

@bs.module("../db/schema")
external resolvers: Resolver.t = "resolvers"

@bs.module("../context")
external createContext: Prisma.t = "createContext"

@bs.send
external listen: (Server.t ,unit) => Js.Promise.t<'a> = "listen"
