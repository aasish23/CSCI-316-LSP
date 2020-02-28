;Q1
(defun min-2 (a b)
    (cond 
        ((NOT (AND (numberp a) (numberp b)))'error)
        ((< a b) a)
        ((>= a b) b)
    )
)

;Q2
(defun safe-avg (a b)
    (cond 
    ((NOT (AND (numberp a) (numberp b))) 'nil)
    ((/ (+ a b ) 2)))
)

;Q3
(defun odd-gt-million (a)
    (cond 
        ((not (AND (integerp a))) nil)
        ((< a 1000000) nil)
        ((= (mod a 2) 1)t)
    )
)

;Q4 
(defun multiple-member (a b)
    (and (or (integerp a) (not (consp a))) (consp b) (member a (cdr (member a b))))
)


;Q5
(defun month->integer (s)
    (cond
        ((not (symbolp s)) nil)
        ((equal s 'January) 1)
        ((eq s 'Feburary) 2)
        ((eq s 'March) 3)
        ((eq s 'April) 4)
        ((eq s 'May) 5)
        ((eq s 'June) 6)
        ((eq s 'July) 7)
        ((eq s 'August) 8)
        ((eq s 'September)9 )
        ((eq s 'October) 10)
        ((eq s 'November) 11)
        ((eq s 'December) 12)
		(nil)
    )
)

;Q6
(defun score->grade (s)
    (cond 
        ((not (numberp s))nil)
        ((>= s 90)'A)
        ((and (>= s 87) (< s 90 ))'A-)
        ((and (>= s 83) (< s 87 ))'B+)
        ((and (>= s 80) (< s 83 ))'B)
        ((and (>= s 77) (< s 80 ))'B-)
        ((and (>= s 73) (< s 77 ))'C+)
        ((and (>= s 70) (< s 73 ))'C)
        ((and (>= s 60) (< s 70)) 'D) 
        ((< s 60) 'F)
    )
)

;Q7 
(defun GT (a b)
    (and 
    (numberp a) (numberp b)
    (> a b)  
    )
)

;Q8
(defun SAME-PARITY (a b)
    (or 
    (and (integerp a) (integerp b) (evenp a) (evenp b))
    (and (integerp a) (integerp b) (oddp a) (oddp b))
    )
)

;Q9 
(defun safe-div (a b)
    (and (numberp a) (numberp b) (not (zerop b)) (/ a b))
)
