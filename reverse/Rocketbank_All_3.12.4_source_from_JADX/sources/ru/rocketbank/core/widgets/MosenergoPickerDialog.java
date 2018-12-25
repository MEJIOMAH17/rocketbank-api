package ru.rocketbank.core.widgets;

import android.app.AlertDialog;
import android.content.Context;
import android.view.LayoutInflater;
import com.facebook.GraphRequest;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.provider.ProviderValues;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: MosenergoPickerDialog.kt */
public final class MosenergoPickerDialog extends AlertDialog {
    private final MosenergoPicker _picker;

    public MosenergoPickerDialog(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        super(context);
        context = LayoutInflater.from(context).inflate(C0859R.layout.mosenergo_picker_dialog_fragment, null);
        setView(context);
        context = context.findViewById(C0859R.id.mosenergo_picker_dialog_mosenergo);
        if (context == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.MosenergoPicker");
        }
        this._picker = (MosenergoPicker) context;
    }

    public final void setFields(ProviderValues providerValues) {
        Intrinsics.checkParameterIsNotNull(providerValues, GraphRequest.FIELDS_PARAM);
        this._picker.setFields(providerValues);
    }

    public final int getIndex() {
        return this._picker.getIndex();
    }

    public final void setIndex(int i) {
        this._picker.setIndex(i);
    }
}
