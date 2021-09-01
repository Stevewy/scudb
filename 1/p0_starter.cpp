#include "p0_starter.h"
#include<bits/stdc++.h>
using namespace scudb;

int main(){
    RowMatrix<int> *A=new RowMatrix<int>(2,3);
    std::vector<int> v;
    v.push_back(2);
    v.push_back(3);
    v.push_back(4);
    v.push_back(5);
    v.push_back(6);
    v.push_back(7);
    A->FillFrom(v);
    printf("第一行第二列元素: %d\n",A->GetElement(0,1));
    A->SetElement(0,1,10); 
    printf("更新后第一行第二列元素: %d\n",A->GetElement(0,1));
    RowMatrix<int> *B=new RowMatrix<int>(3,2);
    RowMatrix<int> *C=new RowMatrix<int>(2,2);
    B->FillFrom(v);
    v.pop_back();
    v.pop_back();
    C->FillFrom(v);
    printf("A*B+C结果：\n");

    std::unique_ptr<RowMatrix<int>>D=RowMatrixOperations<int>::GEMM(A,B,C);
    for(int i = 0; i < 2; i++){
    	for(int j = 0; j < 2; j++){
    		printf("%d ",D.get()->GetElement(i,j));
		}
		puts("");
	}
	return 0;
}
