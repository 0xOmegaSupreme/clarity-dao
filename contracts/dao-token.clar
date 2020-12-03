(impl-trait .dao-token-trait.token-trait)

(define-fungible-token dao-token)

(define-public (transfer? (amount uint) (sender principal) (recipient principal))
  (ft-transfer? dao-token amount sender recipient)
)

(define-read-only (balance-of (principal principal))
  (ok (ft-get-balance dao-token principal))
)
