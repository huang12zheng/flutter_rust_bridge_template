#![cfg(feature = "test")]

use anyhow;
use flutter_rust_bridge::{frb, Opaque};
use surrealdb_rs::method::Method;
pub use surrealdb_rs::{embedded::Db, storage::Mem, Connection, StaticClient, Surreal};

// #[frb(mirror(Surreal))]
// pub struct _Surreal<C: Connection> {
//     router: OnceCell<Arc<Router<C>>>,
// }

pub enum ISurreal {
    IDb(Opaque<Surreal<Db>>),
}

pub const NUM: usize = 100_000;

#[tokio::main(flavor = "current_thread")]
pub async fn get_db() -> anyhow::Result<ISurreal> {
    // tracing_subscriber::fmt::init();
    let DB = Surreal::new();
    DB.connect::<Mem>(()).with_capacity(NUM).await?;
    Ok(ISurreal::IDb(Opaque::new(DB)))
}

// #[frb(mirror(Method))]
// pub enum _Method {
//     /// Sends an authentication token to the server
//     Authenticate,
//     /// Perfoms a merge update operation
//     Merge,
//     /// Creates a record in a table
//     Create,
//     /// Deletes a record from a table
//     Delete,
//     /// Exports a database
//     Export,
//     /// Checks the health of the server
//     Health,
//     /// Imports a database
//     Import,
//     /// Invalidates a session
//     Invalidate,
//     /// Kills a live query
//     #[doc(hidden)] // Not supported yet
//     Kill,
//     /// Starts a live query
//     #[doc(hidden)] // Not supported yet
//     Live,
//     /// Perfoms a patch update operation
//     Patch,
//     /// Sends a raw query to the database
//     Query,
//     /// Selects a record or records from a table
//     Select,
//     /// Sets a parameter on the connection
//     Set,
//     /// Signs into the server
//     Signin,
//     /// Signs up on the server
//     Signup,
//     /// Removes a parameter from a connection
//     Unset,
//     /// Perfoms an update operation
//     Update,
//     /// Selects a namespace and database to use
//     Use,
//     /// Queries the version of the server
//     Version,
// }

// #[frb(mirror(Db))]
// pub struct _Db {
//     pub(crate) method: Method,
// }
