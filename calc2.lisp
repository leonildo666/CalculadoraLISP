(defun collect(*string*) ;funcao que pega os valores para a operação
    (format t "~s selecionado, escolha o primeiro valor: " *string*)
    (setq *v1* (read))
    (format t "Escolha o segundo: ")
    (setq *v2* (read)))

(defun somar(*v1* *v2*)
    (setq *result* (+ *v1* *v2*)))

(defun subtrair(*v1* *v2*)
    (setq *result* (- *v1* *v2*)))

(defun mult(*v1* *v2*)
    (setq *result* (* *v1* *v2*)))

(defun divis(*v1* *v2*)
    (setq *result* (/ *v1* *v2*)))

(defun pow(*v1* *v2*)
    (setq *result* (expt *v1* *v2*)))

(defun logs(*v1* *v2*)
    (setq *result* (log *v1* *v2*)))

(defun resultado()
    (format t "Resultado: ~d ~%~%" *result*))


(defun mainloop()
    (format t
    "Calculadora
    1 - Soma
    2 - Subtração
    3 - Multiplicação
    4 - Divisão
    5 - Potência
    6 - Radiciação
    7 - Logaritmo
    0 - Sair
    Escolha: ")

    (setq *select* (read))

    (case *select* 
        (1 (setq *string* "Soma")
        (collect *string*)
        (somar *v1* *v2*)
        (resultado)
        (mainloop))

        (2 (setq *string* "Subtração")
        (collect *string*)
        (subtrair *v1* *v2*)
        (resultado)
        (mainloop))

        (3 (setq *string* "Multiplicação")
        (collect *string*)
        (mult *v1* *v2*)
        (resultado)
        (mainloop))

        (4 (setq *string* "Divisão")
        (collect *string*)
        (divis *v1* *v2*)
        (resultado)
        (mainloop))

        (5 (setq *string* "Potência")
        (collect *string*)
        (pow *v1* *v2*)
        (resultado)
        (mainloop))

        (6 (format t "Raiz selecionada, digite o valor: ")
        (format t "Resposta: ~d" (sqrt *v1*))
        (mainloop))

        (7 (setq *string* "log")
        (collect *string*)
        (logs *v1* *v2*)
        (resultado)
        (mainloop))

        (0 (format t "tchau"))

        (otherwise (format t "invalido~%")
        (mainloop))))
    
(mainloop)