.class public final Lru/rocketbank/r2d2/utils/ViewModelObservable$DelegateObservable;
.super Ljava/lang/Object;
.source "ViewModelObservable.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/utils/ViewModelObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DelegateObservable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final baseObservable:Landroid/databinding/BaseObservable;

.field private final brFieldId:I

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILandroid/databinding/BaseObservable;)V
    .locals 1

    const-string v0, "baseObservable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lru/rocketbank/r2d2/utils/ViewModelObservable$DelegateObservable;->brFieldId:I

    iput-object p2, p0, Lru/rocketbank/r2d2/utils/ViewModelObservable$DelegateObservable;->baseObservable:Landroid/databinding/BaseObservable;

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lru/rocketbank/r2d2/utils/ViewModelObservable$DelegateObservable;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/reflect/KProperty<",
            "*>;)TT;"
        }
    .end annotation

    const-string p1, "property"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object p1, p0, Lru/rocketbank/r2d2/utils/ViewModelObservable$DelegateObservable;->value:Ljava/lang/Object;

    return-object p1
.end method

.method public final setValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lru/rocketbank/r2d2/utils/ViewModelObservable$DelegateObservable;->value:Ljava/lang/Object;

    return-void
.end method

.method public final setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/reflect/KProperty<",
            "*>;TT;)V"
        }
    .end annotation

    const-string p1, "property"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iput-object p3, p0, Lru/rocketbank/r2d2/utils/ViewModelObservable$DelegateObservable;->value:Ljava/lang/Object;

    if-eqz p3, :cond_0

    .line 57
    iget-object p1, p0, Lru/rocketbank/r2d2/utils/ViewModelObservable$DelegateObservable;->baseObservable:Landroid/databinding/BaseObservable;

    iget p2, p0, Lru/rocketbank/r2d2/utils/ViewModelObservable$DelegateObservable;->brFieldId:I

    invoke-virtual {p1, p2}, Landroid/databinding/BaseObservable;->notifyPropertyChanged(I)V

    :cond_0
    return-void
.end method
