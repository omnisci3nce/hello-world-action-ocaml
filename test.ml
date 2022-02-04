let test_hello () =
  Alcotest.(check string) "same string" Hello.hello "Hello, World!"

let () =
  let open Alcotest in
  run "Hello" [ ("World", [ test_case "Equal" `Quick test_hello ]) ]
