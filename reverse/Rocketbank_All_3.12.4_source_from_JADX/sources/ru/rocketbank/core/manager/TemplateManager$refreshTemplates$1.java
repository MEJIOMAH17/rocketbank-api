package ru.rocketbank.core.manager;

import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.TransferTemplates;
import ru.rocketbank.core.network.model.TransfersModelJsonObject;
import ru.rocketbank.core.network.model.TransfersModelUrFiz;
import rx.functions.Func1;

/* compiled from: TemplateManager.kt */
final class TemplateManager$refreshTemplates$1<T, R> implements Func1<T, R> {
    public static final TemplateManager$refreshTemplates$1 INSTANCE = new TemplateManager$refreshTemplates$1();

    TemplateManager$refreshTemplates$1() {
    }

    public final /* bridge */ /* synthetic */ Object call(Object obj) {
        obj = ((TransfersModelJsonObject) obj).getTransfers();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        if (obj != null) {
            obj = obj.iterator();
            while (obj.hasNext()) {
                TransfersModelUrFiz transfersModelUrFiz = (TransfersModelUrFiz) obj.next();
                Intrinsics.checkExpressionValueIsNotNull(transfersModelUrFiz, "transfersModelUrFiz");
                if (transfersModelUrFiz.isCorporate()) {
                    arrayList.add(transfersModelUrFiz);
                } else if (transfersModelUrFiz.isIndividual()) {
                    arrayList2.add(transfersModelUrFiz);
                } else if (transfersModelUrFiz.isCard2Card()) {
                    arrayList3.add(transfersModelUrFiz);
                } else if (transfersModelUrFiz.isBudget()) {
                    arrayList4.add(transfersModelUrFiz);
                }
            }
        }
        return new TransferTemplates(arrayList3, arrayList2, arrayList, arrayList4);
    }
}
