;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname Lab) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define block-exp '(1 a (4 b (8 c (3 d(9 h(2 i(5 j(3 k)))))))))

(define add-nums
         (lambda (block-exp)
           (cond
             ((null? block-exp) 0)
             ((number? (car block-exp)) (+ (car block-exp) (add-nums(cdr block-exp))))
             ((list? (car block-exp)) (add-nums (car block-exp)))
             (else (add-nums (cdr block-exp))))))

(define collect-symbols
  (lambda (block-exp)
         (cond
             ((null? block-exp) '())
             ((symbol? (car block-exp)) (cons (car block-exp) (collect-symbols (cdr block-exp))))
             ((list? (car block-exp)) (collect-symbols (car block-exp)))
             (else (collect-symbols (cdr block-exp))))))







(add-nums block-exp)
"****************************"
(collect-symbols block-exp)

