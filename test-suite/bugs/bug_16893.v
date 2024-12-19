Class Singleton := { singleton : unit }.
Class Foo.
Instance foo_Instance : Foo. Qed.

Axiom Singleton_intro : Foo -> Singleton.

#[local] Hint Immediate Singleton_intro : typeclass_instances.

Lemma L u (H : singleton = tt) : u = tt.
Proof. destruct u. reflexivity. Qed.
