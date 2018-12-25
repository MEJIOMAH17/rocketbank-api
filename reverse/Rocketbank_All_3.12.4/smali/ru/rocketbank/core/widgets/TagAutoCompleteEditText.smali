.class public Lru/rocketbank/core/widgets/TagAutoCompleteEditText;
.super Landroid/widget/AutoCompleteTextView;
.source "TagAutoCompleteEditText.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/widgets/TagAutoCompleteEditText$TagAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTagAutoCompleteEditText.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TagAutoCompleteEditText.kt\nru/rocketbank/core/widgets/TagAutoCompleteEditText\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,187:1\n1246#2:188\n1315#2,3:189\n624#2:192\n713#2,2:193\n*E\n*S KotlinDebug\n*F\n+ 1 TagAutoCompleteEditText.kt\nru/rocketbank/core/widgets/TagAutoCompleteEditText\n*L\n35#1:188\n35#1,3:189\n45#1:192\n45#1,2:193\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private authorization:Lru/rocketbank/core/user/Authorization;

.field private rocketApi:Lru/rocketbank/core/network/api/RocketAPI;

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->tags:Ljava/util/List;

    .line 31
    invoke-static {}, Lru/rocketbank/core/BaseRocketApplication;->getRocketComponent()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getRocketApi()Lru/rocketbank/core/network/api/RocketAPI;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->rocketApi:Lru/rocketbank/core/network/api/RocketAPI;

    .line 32
    invoke-static {}, Lru/rocketbank/core/BaseRocketApplication;->getRocketComponent()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->authorization:Lru/rocketbank/core/user/Authorization;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->tags:Ljava/util/List;

    .line 31
    invoke-static {}, Lru/rocketbank/core/BaseRocketApplication;->getRocketComponent()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getRocketApi()Lru/rocketbank/core/network/api/RocketAPI;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->rocketApi:Lru/rocketbank/core/network/api/RocketAPI;

    .line 32
    invoke-static {}, Lru/rocketbank/core/BaseRocketApplication;->getRocketComponent()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->authorization:Lru/rocketbank/core/user/Authorization;

    .line 64
    invoke-direct {p0, p2, p1}, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->init(Landroid/util/AttributeSet;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->tags:Ljava/util/List;

    .line 31
    invoke-static {}, Lru/rocketbank/core/BaseRocketApplication;->getRocketComponent()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p3

    invoke-interface {p3}, Lru/rocketbank/core/dagger/component/RocketComponent;->getRocketApi()Lru/rocketbank/core/network/api/RocketAPI;

    move-result-object p3

    iput-object p3, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->rocketApi:Lru/rocketbank/core/network/api/RocketAPI;

    .line 32
    invoke-static {}, Lru/rocketbank/core/BaseRocketApplication;->getRocketComponent()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p3

    invoke-interface {p3}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object p3

    iput-object p3, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->authorization:Lru/rocketbank/core/user/Authorization;

    .line 68
    invoke-direct {p0, p2, p1}, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->init(Landroid/util/AttributeSet;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 29
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->tags:Ljava/util/List;

    .line 31
    invoke-static {}, Lru/rocketbank/core/BaseRocketApplication;->getRocketComponent()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p3

    invoke-interface {p3}, Lru/rocketbank/core/dagger/component/RocketComponent;->getRocketApi()Lru/rocketbank/core/network/api/RocketAPI;

    move-result-object p3

    iput-object p3, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->rocketApi:Lru/rocketbank/core/network/api/RocketAPI;

    .line 32
    invoke-static {}, Lru/rocketbank/core/BaseRocketApplication;->getRocketComponent()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p3

    invoke-interface {p3}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object p3

    iput-object p3, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->authorization:Lru/rocketbank/core/user/Authorization;

    .line 73
    invoke-direct {p0, p2, p1}, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->init(Landroid/util/AttributeSet;Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$loadTags(Lru/rocketbank/core/widgets/TagAutoCompleteEditText;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->loadTags()V

    return-void
.end method

.method public static bridge synthetic currentWord$default(Lru/rocketbank/core/widgets/TagAutoCompleteEditText;IILjava/lang/Object;)Lkotlin/Pair;
    .locals 0

    if-eqz p3, :cond_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: currentWord"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1

    .line 98
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->getSelectionStart()I

    move-result p1

    :cond_1
    invoke-virtual {p0, p1}, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->currentWord(I)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method private final init(Landroid/util/AttributeSet;Landroid/content/Context;)V
    .locals 2

    .line 77
    new-instance p1, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$TagAdapter;

    invoke-direct {p1, p0, p2}, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$TagAdapter;-><init>(Lru/rocketbank/core/widgets/TagAutoCompleteEditText;Landroid/content/Context;)V

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    iget-object p1, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {p1}, Lru/rocketbank/core/user/Authorization;->getUser()Lrx/Observable;

    move-result-object p1

    new-instance p2, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$init$1;

    invoke-direct {p2, p0}, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$init$1;-><init>(Lru/rocketbank/core/widgets/TagAutoCompleteEditText;)V

    check-cast p2, Lrx/functions/Action1;

    sget-object v0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$init$2;->INSTANCE:Lru/rocketbank/core/widgets/TagAutoCompleteEditText$init$2;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    new-instance v1, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$sam$rx_functions_Action1$0;

    invoke-direct {v1, v0}, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$sam$rx_functions_Action1$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    move-object v0, v1

    :cond_0
    check-cast v0, Lrx/functions/Action1;

    invoke-virtual {p1, p2, v0}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method

.method private final loadTags()V
    .locals 4

    .line 82
    iget-object v0, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->rocketApi:Lru/rocketbank/core/network/api/RocketAPI;

    invoke-interface {v0}, Lru/rocketbank/core/network/api/RocketAPI;->tags()Lrx/Observable;

    move-result-object v0

    .line 83
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 84
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 85
    sget-object v1, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$loadTags$1;->INSTANCE:Lkotlin/reflect/KProperty1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_0

    new-instance v2, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$sam$rx_functions_Func1$0;

    invoke-direct {v2, v1}, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$sam$rx_functions_Func1$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    move-object v1, v2

    :cond_0
    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 86
    new-instance v1, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$loadTags$2;

    invoke-direct {v1, p0}, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$loadTags$2;-><init>(Lru/rocketbank/core/widgets/TagAutoCompleteEditText;)V

    check-cast v1, Lrx/functions/Action1;

    sget-object v2, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$loadTags$3;->INSTANCE:Lru/rocketbank/core/widgets/TagAutoCompleteEditText$loadTags$3;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_1

    new-instance v3, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$sam$rx_functions_Action1$0;

    invoke-direct {v3, v2}, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$sam$rx_functions_Action1$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    move-object v2, v3

    :cond_1
    check-cast v2, Lrx/functions/Action1;

    invoke-virtual {v0, v1, v2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 124
    invoke-static {p0, v1, v0, v2}, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->currentWord$default(Lru/rocketbank/core/widgets/TagAutoCompleteEditText;IILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-eqz v3, :cond_4

    .line 126
    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    const-string v5, "#"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_0

    move v4, v1

    :cond_0
    add-int/2addr v2, v4

    .line 131
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    add-int/2addr v3, v2

    .line 133
    new-instance v4, Lkotlin/ranges/IntRange;

    invoke-virtual {p0}, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-direct {v4, v1, v5}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 1054
    invoke-virtual {v4}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v5

    if-gt v5, v2, :cond_1

    invoke-virtual {v4}, Lkotlin/ranges/IntRange;->getLast()I

    move-result v5

    if-gt v2, v5, :cond_1

    move v5, v0

    goto :goto_0

    :cond_1
    move v5, v1

    :goto_0
    if-eqz v5, :cond_4

    .line 2054
    invoke-virtual {v4}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v5

    if-gt v5, v3, :cond_2

    invoke-virtual {v4}, Lkotlin/ranges/IntRange;->getLast()I

    move-result v4

    if-gt v3, v4, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    if-eqz v0, :cond_4

    .line 135
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0, v2, v3, p1}, Lkotlin/text/StringsKt;->replaceRange(Ljava/lang/CharSequence;IILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    return-object p1

    .line 138
    :cond_4
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    return-object p1
.end method

.method public final currentWord(I)Lkotlin/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-string v1, "text"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string v1, " "

    const/4 v8, 0x0

    aput-object v1, v3, v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 101
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v8

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 102
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    if-le v2, p1, :cond_0

    goto :goto_1

    :cond_0
    if-lt v4, p1, :cond_1

    .line 104
    new-instance p1, Lkotlin/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 106
    :cond_1
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    add-int/2addr v2, v3

    goto :goto_0

    .line 108
    :cond_2
    new-instance p1, Lkotlin/Pair;

    const/4 v0, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final filterTags(Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_3

    .line 39
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "#"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "#"

    .line 44
    invoke-static {p1, v0, v4, v3, v4}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 45
    iget-object v0, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->tags:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 193
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 45
    check-cast v3, Ljava/lang/CharSequence;

    move-object v4, p1

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 194
    :cond_2
    check-cast v1, Ljava/util/List;

    .line 46
    new-instance p1, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$filterTags$2;

    invoke-direct {p1, p0, v1}, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$filterTags$2;-><init>(Lru/rocketbank/core/widgets/TagAutoCompleteEditText;Ljava/util/List;)V

    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 40
    :cond_3
    :goto_1
    new-instance p1, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$filterTags$1;

    invoke-direct {p1, p0}, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$filterTags$1;-><init>(Lru/rocketbank/core/widgets/TagAutoCompleteEditText;)V

    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->post(Ljava/lang/Runnable;)Z

    .line 41
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->updateAdapter(Ljava/util/List;)V

    return-void
.end method

.method public final getAuthorization()Lru/rocketbank/core/user/Authorization;
    .locals 1

    .line 32
    iget-object v0, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->authorization:Lru/rocketbank/core/user/Authorization;

    return-object v0
.end method

.method public final getRocketApi()Lru/rocketbank/core/network/api/RocketAPI;
    .locals 1

    .line 31
    iget-object v0, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->rocketApi:Lru/rocketbank/core/network/api/RocketAPI;

    return-object v0
.end method

.method public final onTagsLoaded(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "tags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    check-cast p1, Ljava/lang/Iterable;

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault$251b5948(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 189
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 190
    check-cast v1, Ljava/lang/String;

    const-string v2, "#"

    .line 35
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 191
    :cond_0
    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->tags:Ljava/util/List;

    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 90
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AutoCompleteTextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    .line 91
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p3

    goto :goto_1

    :cond_1
    :goto_0
    move p1, p2

    :goto_1
    if-nez p1, :cond_3

    invoke-virtual {p0}, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->isPerformingCompletion()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 94
    invoke-static {p0, p3, p2, p1}, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->currentWord$default(Lru/rocketbank/core/widgets/TagAutoCompleteEditText;IILjava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 95
    invoke-virtual {p0, p1}, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->filterTags(Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 2

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->getSelectionStart()I

    move-result v0

    .line 113
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->clearComposingText()V

    .line 115
    invoke-virtual {p0, p1}, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->setText(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 119
    invoke-virtual {p0, v0}, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->currentWord(I)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 120
    check-cast p1, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return-void
.end method

.method public final setAuthorization(Lru/rocketbank/core/user/Authorization;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->authorization:Lru/rocketbank/core/user/Authorization;

    return-void
.end method

.method public final setRocketApi(Lru/rocketbank/core/network/api/RocketAPI;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->rocketApi:Lru/rocketbank/core/network/api/RocketAPI;

    return-void
.end method

.method public final updateAdapter(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "tags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.core.widgets.TagAutoCompleteEditText.TagAdapter"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast v0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$TagAdapter;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$TagAdapter;->setItems(Ljava/util/List;)V

    .line 58
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.core.widgets.TagAutoCompleteEditText.TagAdapter"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p1, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$TagAdapter;

    invoke-virtual {p1}, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$TagAdapter;->notifyDataSetChanged()V

    return-void
.end method
