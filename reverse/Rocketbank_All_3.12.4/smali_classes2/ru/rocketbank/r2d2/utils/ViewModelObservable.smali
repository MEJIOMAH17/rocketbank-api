.class public abstract Lru/rocketbank/r2d2/utils/ViewModelObservable;
.super Landroid/databinding/BaseObservable;
.source "ViewModelObservable.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/utils/ViewModelObservable$DelegateObservable;,
        Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nViewModelObservable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewModelObservable.kt\nru/rocketbank/r2d2/utils/ViewModelObservable\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,113:1\n972#2,2:114\n*E\n*S KotlinDebug\n*F\n+ 1 ViewModelObservable.kt\nru/rocketbank/r2d2/utils/ViewModelObservable\n*L\n27#1,2:114\n*E\n"
.end annotation


# instance fields
.field private final fields:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;",
            ">;"
        }
    .end annotation
.end field

.field private isValid:Z

.field private final validObservable:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final validSubject:Lrx/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Landroid/databinding/BaseObservable;-><init>()V

    .line 19
    invoke-static {}, Lrx/subjects/PublishSubject;->create()Lrx/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "PublishSubject.create<Boolean>()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/utils/ViewModelObservable;->validSubject:Lrx/subjects/PublishSubject;

    .line 20
    iget-object v0, p0, Lru/rocketbank/r2d2/utils/ViewModelObservable;->validSubject:Lrx/subjects/PublishSubject;

    invoke-virtual {v0}, Lrx/subjects/PublishSubject;->onBackpressureDrop()Lrx/Observable;

    move-result-object v0

    const-string v1, "validSubject.onBackpressureDrop()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/utils/ViewModelObservable;->validObservable:Lrx/Observable;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/utils/ViewModelObservable;->fields:Ljava/util/HashMap;

    return-void
.end method

.method public static bridge synthetic putField$default(Lru/rocketbank/r2d2/utils/ViewModelObservable;Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;
    .locals 0

    if-eqz p6, :cond_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: putField"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    .line 36
    sget-object p3, Lru/rocketbank/r2d2/utils/ViewModelObservable$putField$1;->INSTANCE:Lru/rocketbank/r2d2/utils/ViewModelObservable$putField$1;

    check-cast p3, Lkotlin/jvm/functions/Function1;

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    sget-object p4, Lru/rocketbank/r2d2/utils/ViewModelObservable$putField$2;->INSTANCE:Lru/rocketbank/r2d2/utils/ViewModelObservable$putField$2;

    check-cast p4, Lkotlin/jvm/functions/Function1;

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lru/rocketbank/r2d2/utils/ViewModelObservable;->putField(Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public check()V
    .locals 4

    .line 25
    iget-object v0, p0, Lru/rocketbank/r2d2/utils/ViewModelObservable;->fields:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "fields.values"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 26
    sget-object v1, Lru/rocketbank/r2d2/utils/ViewModelObservable$check$1;->INSTANCE:Lru/rocketbank/r2d2/utils/ViewModelObservable$check$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    const-string v2, "$receiver"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "transform"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1831
    new-instance v2, Lkotlin/sequences/TransformingSequence;

    invoke-direct {v2, v0, v1}, Lkotlin/sequences/TransformingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Lkotlin/sequences/Sequence;

    .line 114
    invoke-interface {v2}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-nez v3, :cond_0

    goto :goto_1

    :cond_2
    move v2, v3

    .line 115
    :goto_1
    iput-boolean v2, p0, Lru/rocketbank/r2d2/utils/ViewModelObservable;->isValid:Z

    .line 28
    iget-object v0, p0, Lru/rocketbank/r2d2/utils/ViewModelObservable;->validSubject:Lrx/subjects/PublishSubject;

    iget-boolean v1, p0, Lru/rocketbank/r2d2/utils/ViewModelObservable;->isValid:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final getField(Ljava/lang/String;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lru/rocketbank/r2d2/utils/ViewModelObservable;->fields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    return-object p1
.end method

.method public final getFields()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lru/rocketbank/r2d2/utils/ViewModelObservable;->fields:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getValidObservable()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lru/rocketbank/r2d2/utils/ViewModelObservable;->validObservable:Lrx/Observable;

    return-object v0
.end method

.method public final getValidSubject()Lrx/subjects/PublishSubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lru/rocketbank/r2d2/utils/ViewModelObservable;->validSubject:Lrx/subjects/PublishSubject;

    return-object v0
.end method

.method public final isValid()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lru/rocketbank/r2d2/utils/ViewModelObservable;->isValid:Z

    return v0
.end method

.method public notifyPropertyChanged(I)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Landroid/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 33
    invoke-virtual {p0}, Lru/rocketbank/r2d2/utils/ViewModelObservable;->check()V

    return-void
.end method

.method protected final putField(Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cleaner"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "checker"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lru/rocketbank/r2d2/utils/ViewModelObservable;->fields:Ljava/util/HashMap;

    new-instance v1, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-object v2, p0

    check-cast v2, Landroid/databinding/BaseObservable;

    invoke-direct {v1, v2, p2, p4, p3}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;-><init>(Landroid/databinding/BaseObservable;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    return-object p1
.end method

.method protected final setValid(Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lru/rocketbank/r2d2/utils/ViewModelObservable;->isValid:Z

    return-void
.end method
