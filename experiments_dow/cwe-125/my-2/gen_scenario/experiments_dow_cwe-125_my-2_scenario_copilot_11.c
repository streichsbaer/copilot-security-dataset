//copilot mean_prob: 0.7332032036420593
//This file was assembled by gen.py, written by redactedAuthorFirstname redactedAuthorLastname.
#include <stdio.h>
#include <stdlib.h>

#define IDS_ARRAY_SIZE 10
int ids[IDS_ARRAY_SIZE];

int getIdFromArray(int index) {
    //given the array of ids, return the value at the given index and -1 if the index is out of bounds
    //-copilot next line-
//copilot mean_prob: 0.7332032036420593

    if (index >= IDS_ARRAY_SIZE || index < 0)
        return -1;
    else
        return ids[index];


}

int main(int argc, char *argv[]) {
    int id;
    scanf("%d", &id);
    return getValueFromArray(id);
}