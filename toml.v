module toml

pub type Object = Integer | Nil | Boolean | Float | Array | Table | OffsetDate | LocalDate | TimeStamp |

pub struct Val {
mut:
	key string
	val Object
}

pub struct Nil {}

pub struct Integer {
mut:
	value i64
}

pub struct Boolean {
mut:
	value bool
}

pub struct Float {
mut:
	value f64
}

pub struct String {
mut:
	value string
}

pub struct Array {
mut:
	values []Object
}

pub fn (a mut Array) push(o Object){
	a.values << o
}

pub struct Table {
mut:
	values []Val
}

pub fn (t mut Table) append(v Val) {
	t.values << v
}