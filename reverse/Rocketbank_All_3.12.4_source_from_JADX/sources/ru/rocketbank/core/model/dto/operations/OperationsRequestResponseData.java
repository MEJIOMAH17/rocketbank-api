package ru.rocketbank.core.model.dto.operations;

import java.util.List;
import ru.rocketbank.core.model.dto.Pagination;

public class OperationsRequestResponseData {
    private List<Operation> operations;
    private Pagination pagination;

    public Pagination getPagination() {
        return this.pagination;
    }

    public List<Operation> getOperations() {
        return this.operations;
    }
}
