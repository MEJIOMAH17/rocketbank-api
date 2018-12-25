package ru.rocketbank.core.network.api;

import retrofit2.http.Body;
import retrofit2.http.DELETE;
import retrofit2.http.GET;
import retrofit2.http.PATCH;
import retrofit2.http.Path;
import ru.rocketbank.core.model.dto.GenericRequestResponseData;
import ru.rocketbank.core.model.transfers.PaymentTemplates;
import ru.rocketbank.core.network.model.TemplateEditBody;
import rx.Observable;

public interface TemplateApi {
    @DELETE("payment_templates/{id}")
    Observable<GenericRequestResponseData> delete(@Path("id") int i);

    @PATCH("payment_templates/{id}")
    Observable<GenericRequestResponseData> editTemplate(@Path("id") long j, @Body TemplateEditBody templateEditBody);

    @GET("templates/payments/")
    Observable<PaymentTemplates> getTemplatesPayments();
}
