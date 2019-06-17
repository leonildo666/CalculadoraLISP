(defun entrada(*escolha*) ;funcao que pega os valores para a operação
    (format t "Operacao: ~d~%Escolha o primeiro valor: " *escolha*)
    (setq *v1* (read))
    (format t "Escolha o segundo: ")
    (setq *v2* (read)))

(defun soma(*v1* *v2*)
    (setq *result* (+ *v1* *v2*)))

(defun sub(*v1* *v2*)
    (setq *result* (- *v1* *v2*)))

(defun mult(*v1* *v2*)
    (setq *result* (* *v1* *v2*)))

(defun div(*v1* *v2*)
    (setq *result* (/ *v1* *v2*)))

(defun pot(*v1* *v2*)
    (setq *result* (expt *v1* *v2*)))

(defun logs(*v1* *v2*)
    (setq *result* (log *v1* *v2*)))

(defun resultado()
    (format t "Resultado: ~d ~%~%" *result*))


(defun mainloop()
    (format t
    "Calculadora
    1 - Soma
    2 - Subtracao
    3 - Multiplicacao
    4 - Divisao
    5 - Exponenciacao
    6 - Raiz quadrada
    7 - Logaritmo
    0 - Sair
    Escolha: ")

    (setq *cod-escolha* (read))

    (case *cod-escolha* 
        (1 (setq *escolha* "Soma")
        (entrada *escolha*)
        (soma *v1* *v2*)
        (resultado)
        (mainloop))

        (2 (setq *escolha* "Subtracao")
        (entrada *escolha*)
        (sub *v1* *v2*)
        (resultado)
        (mainloop))

        (3 (setq *escolha* "Multiplicacao")
        (entrada *escolha*)
        (mult *v1* *v2*)
        (resultado)
        (mainloop))

        (4 (setq *escolha* "Divisao")
        (entrada *escolha*)
        (div *v1* *v2*)
        (resultado)
        (mainloop))

        (5 (setq *escolha* "Exponenciacao (1o valor elevado ao 2o valor)")
        (entrada *escolha*)
        (pot *v1* *v2*)
        (resultado)
        (mainloop))

        (6 (format t "Raiz quadrada~%Escolha o valor: ")
        (setq *v1* (read))
        (format t "Resposta: ~d~%~%" (sqrt *v1*))
        (mainloop))

        (7 (setq *escolha* "Log 1o valor na base 2o valor")
        (entrada *escolha*)
        (logs *v1* *v2*)
        (resultado)
        (mainloop))

        (0 (format t "Tchau"))

        (otherwise (format t "Entrada invalida. Tente novamente.~%~%")
        (mainloop))))
    
(mainloop)
