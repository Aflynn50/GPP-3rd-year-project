def parse_move(move,roles):
    moves = []
    for role_num in range(len(roles)):
        tokenised = (move[role_num]).split(" ")
        if tokenised[0] == "(":
            s = tokenised[1:-1]
            moves.append("does_" + s[0] + '(' + roles[role_num] + "," + ",".join(s[1:]) + ')')
        else:
            moves.append("does(" + roles[role_num] + "," + move[role_num] + ")")
    return moves
    
    
    
    
print(parse_move(["h"],["robot"]))
print(parse_move(["( move 3 2 )", "noop"],["bill","jim"]))
