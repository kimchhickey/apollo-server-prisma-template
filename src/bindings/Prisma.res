@bs.new @bs.module("@prisma/client")
external prismaClient: unit => 'prisma = "PrismaClient"

type model

@bs.send
external findUnique: (model, 'args) => Js.Promise.t<Js.Nullable.t<'ret>> = "findUnique"

@bs.send
external findMany: (model, 'args) => Js.Promise.t<array<'ret>> = "findMany"

@bs.send
external create: (model, 'args) => Js.Promise.t<'ret> = "create"
