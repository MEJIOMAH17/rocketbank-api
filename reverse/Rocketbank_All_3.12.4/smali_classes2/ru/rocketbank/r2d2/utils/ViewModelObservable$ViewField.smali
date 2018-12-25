.class public final Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;
.super Landroid/databinding/BaseObservable;
.source "ViewModelObservable.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/utils/ViewModelObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewField"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private checker:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final cleaner:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lazyValidObservable:Lrx/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private valid:Z

.field private final value$delegate:Lru/rocketbank/r2d2/utils/ViewModelObservable$DelegateObservable;

.field private final watcher:Lru/rocketbank/r2d2/utils/TextWatcherAbstract;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "value"

    const-string v4, "getValue()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/databinding/BaseObservable;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/databinding/BaseObservable;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "baseObservable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "checker"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cleaner"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Landroid/databinding/BaseObservable;-><init>()V

    iput-object p3, p0, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->checker:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->cleaner:Lkotlin/jvm/functions/Function1;

    .line 82
    new-instance p3, Lru/rocketbank/r2d2/utils/ViewModelObservable$DelegateObservable;

    invoke-direct {p3, p2, p1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$DelegateObservable;-><init>(ILandroid/databinding/BaseObservable;)V

    iput-object p3, p0, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->value$delegate:Lru/rocketbank/r2d2/utils/ViewModelObservable$DelegateObservable;

    const/4 p1, 0x0

    .line 99
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->setValue(Ljava/lang/String;)V

    .line 105
    new-instance p1, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField$watcher$1;

    invoke-direct {p1, p0}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField$watcher$1;-><init>(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;)V

    check-cast p1, Lru/rocketbank/r2d2/utils/TextWatcherAbstract;

    iput-object p1, p0, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->watcher:Lru/rocketbank/r2d2/utils/TextWatcherAbstract;

    return-void
.end method

.method public static final synthetic access$getLazyValidObservable$p(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;)Lrx/subjects/PublishSubject;
    .locals 0

    .line 65
    iget-object p0, p0, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->lazyValidObservable:Lrx/subjects/PublishSubject;

    return-object p0
.end method

.method public static final synthetic access$setLazyValidObservable$p(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;Lrx/subjects/PublishSubject;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->lazyValidObservable:Lrx/subjects/PublishSubject;

    return-void
.end method


# virtual methods
.method public final getChecker()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->checker:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getCleanValue()Ljava/lang/String;
    .locals 2

    .line 86
    iget-object v0, p0, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->cleaner:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getCleaner()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->cleaner:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getValid()Z
    .locals 2
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .line 94
    invoke-virtual {p0}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getCleanValue()Ljava/lang/String;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->checker:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getValidObservable()Lrx/subjects/PublishSubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->lazyValidObservable:Lrx/subjects/PublishSubject;

    if-nez v0, :cond_0

    .line 73
    invoke-static {}, Lrx/subjects/PublishSubject;->create()Lrx/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->lazyValidObservable:Lrx/subjects/PublishSubject;

    .line 75
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->lazyValidObservable:Lrx/subjects/PublishSubject;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    iget-object v0, p0, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->value$delegate:Lru/rocketbank/r2d2/utils/ViewModelObservable$DelegateObservable;

    sget-object v1, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$DelegateObservable;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getWatcher()Lru/rocketbank/r2d2/utils/TextWatcherAbstract;
    .locals 1

    .line 105
    iget-object v0, p0, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->watcher:Lru/rocketbank/r2d2/utils/TextWatcherAbstract;

    return-object v0
.end method

.method public final setChecker(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iput-object p1, p0, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->checker:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setValid(Z)V
    .locals 0

    .line 91
    iput-boolean p1, p0, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->valid:Z

    return-void
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->value$delegate:Lru/rocketbank/r2d2/utils/ViewModelObservable$DelegateObservable;

    sget-object v1, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$DelegateObservable;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method
