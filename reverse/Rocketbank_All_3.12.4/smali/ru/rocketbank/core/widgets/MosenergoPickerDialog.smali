.class public final Lru/rocketbank/core/widgets/MosenergoPickerDialog;
.super Landroid/app/AlertDialog;
.source "MosenergoPickerDialog.kt"


# instance fields
.field private final _picker:Lru/rocketbank/core/widgets/MosenergoPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0171

    const/4 v1, 0x0

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Lru/rocketbank/core/widgets/MosenergoPickerDialog;->setView(Landroid/view/View;)V

    const v0, 0x7f09026a

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.core.widgets.MosenergoPicker"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Lru/rocketbank/core/widgets/MosenergoPicker;

    iput-object p1, p0, Lru/rocketbank/core/widgets/MosenergoPickerDialog;->_picker:Lru/rocketbank/core/widgets/MosenergoPicker;

    return-void
.end method


# virtual methods
.method public final getIndex()I
    .locals 1

    .line 29
    iget-object v0, p0, Lru/rocketbank/core/widgets/MosenergoPickerDialog;->_picker:Lru/rocketbank/core/widgets/MosenergoPicker;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/MosenergoPicker;->getIndex()I

    move-result v0

    return v0
.end method

.method public final setFields(Lru/rocketbank/core/model/provider/ProviderValues;)V
    .locals 1

    const-string v0, "fields"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lru/rocketbank/core/widgets/MosenergoPickerDialog;->_picker:Lru/rocketbank/core/widgets/MosenergoPicker;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/MosenergoPicker;->setFields(Lru/rocketbank/core/model/provider/ProviderValues;)V

    return-void
.end method

.method public final setIndex(I)V
    .locals 1

    .line 31
    iget-object v0, p0, Lru/rocketbank/core/widgets/MosenergoPickerDialog;->_picker:Lru/rocketbank/core/widgets/MosenergoPicker;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/MosenergoPicker;->setIndex(I)V

    return-void
.end method
