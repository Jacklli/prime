#ifndef MUDUO_EXAMPLES_SUDOKU_SUDOKU_H
#define MUDUO_EXAMPLES_SUDOKU_SUDOKU_H


#include <prime/base/Types.h>
#include <prime/base/StringPiece.h>

prime::string solveSudoku(const prime::StringPiece& puzzle);
const int kCells = 81;

#endif
