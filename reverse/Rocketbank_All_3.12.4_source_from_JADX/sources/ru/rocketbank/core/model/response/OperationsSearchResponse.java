package ru.rocketbank.core.model.response;

import java.util.List;
import ru.rocketbank.core.model.dto.Pagination;
import ru.rocketbank.core.model.dto.operations.Operation;

public class OperationsSearchResponse {
    private List<Operation> operations;
    private Pagination pagination;

    public List<Operation> getOperations() {
        return this.operations;
    }

    public Pagination getPagination() {
        return this.pagination;
    }
}
