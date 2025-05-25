-- The Program is a sequence of statements
data Program = Program [Statement]
  deriving (Show, Eq)

-- Statements represent quantum operations
data Statement
  = InitQubit Int                     -- Initialize n qubits
  | Hadamard Int                      -- Apply Hadamard gate to qubit n
  | PauliX Int                        -- Apply NOT (X) gate to qubit n 
  | PauliY Int                        -- Apply Y gate to qubit n
  | PauliZ Int                        -- Apply Z gate to qubit n
  | CNOT Int Int                      -- Controlled-NOT with control and target qubits
  | Phase Double Int                  -- Phase rotation by angle
  | Measure Int String                -- Measure qubit n, store in variable
  | If String [Statement]             -- Conditional execution based on measurement
  | Repeat Int [Statement]            -- Repeat statements n times
  | Print String                      -- Output a variable or message
  deriving (Show, Eq)