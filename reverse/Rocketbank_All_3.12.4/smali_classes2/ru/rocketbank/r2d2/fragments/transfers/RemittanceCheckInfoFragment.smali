.class public final Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;
.super Lru/rocketbank/r2d2/fragments/RocketFragment;
.source "RemittanceCheckInfoFragment.kt"

# interfaces
.implements Lru/rocketbank/r2d2/fragments/NextButtonListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$CheckInfoObservable;,
        Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRemittanceCheckInfoFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemittanceCheckInfoFragment.kt\nru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,168:1\n433#2:169\n418#2,6:170\n360#2:176\n310#2:177\n401#2,7:182\n1051#3,4:178\n624#3:189\n713#3,2:190\n1246#3:192\n1315#3,3:193\n1728#3:196\n1246#3:201\n1315#3,3:202\n1246#3:209\n1315#3,3:210\n8959#4:197\n9276#4,3:198\n8959#4:205\n9276#4,3:206\n*E\n*S KotlinDebug\n*F\n+ 1 RemittanceCheckInfoFragment.kt\nru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment\n*L\n74#1:169\n74#1,6:170\n75#1:176\n75#1:177\n76#1,7:182\n75#1,4:178\n81#1:189\n81#1,2:190\n82#1:192\n82#1,3:193\n83#1:196\n39#1:201\n39#1,3:202\n44#1:209\n44#1,3:210\n38#1:197\n38#1,3:198\n43#1:205\n43#1,3:206\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$Companion;

.field private static final DATA_EXTRA:Ljava/lang/String; = "data"

.field private static final KEY_EDIT_MODE:Ljava/lang/String; = "KEY_EDIT_MODE"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final basisMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final checkInfoObservable:Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$CheckInfoObservable;

.field private data:Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

.field private editMode:Z

.field private final editModeIgnoreList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final statusesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private validSubscription:Lrx/Subscription;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->Companion:Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 14

    .line 30
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;-><init>()V

    .line 33
    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$CheckInfoObservable;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$CheckInfoObservable;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->checkInfoObservable:Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$CheckInfoObservable;

    const/4 v0, 0x3

    .line 34
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "purpose"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "amount"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "besp"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->editModeIgnoreList:Ljava/util/List;

    .line 37
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "RocketApplication.getCon\u2026gArray(R.array.tax_basis)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    new-instance v1, Ljava/util/ArrayList;

    array-length v4, v0

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 198
    array-length v4, v0

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v0, v5

    const-string v7, "it"

    .line 38
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v6

    check-cast v8, Ljava/lang/CharSequence;

    new-array v9, v3, [Ljava/lang/String;

    const-string v6, " | "

    aput-object v6, v9, v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 200
    :cond_0
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault$251b5948(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 202
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 203
    check-cast v4, Ljava/util/List;

    .line 39
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 2037
    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v5, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    invoke-interface {v0, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 204
    :cond_1
    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 40
    invoke-static {v0}, Lkotlin/collections/AbstractList$Companion;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->basisMap:Ljava/util/Map;

    .line 42
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f030000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "RocketApplication.getCon\u2026ay(R.array.budget_status)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    new-instance v1, Ljava/util/ArrayList;

    array-length v4, v0

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 206
    array-length v4, v0

    move v5, v2

    :goto_2
    if-ge v5, v4, :cond_2

    aget-object v6, v0, v5

    const-string v7, "it"

    .line 43
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v6

    check-cast v8, Ljava/lang/CharSequence;

    new-array v9, v3, [Ljava/lang/String;

    const-string v6, " | "

    aput-object v6, v9, v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 208
    :cond_2
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault$251b5948(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 210
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 211
    check-cast v4, Ljava/util/List;

    .line 44
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 3037
    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v5, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    invoke-interface {v0, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 212
    :cond_3
    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 45
    invoke-static {v0}, Lkotlin/collections/AbstractList$Companion;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->statusesMap:Ljava/util/Map;

    return-void
.end method

.method private final createField(ILjava/lang/String;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lru/rocketbank/r2d2/fragments/transfers/TransferField;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7f0c0084

    .line 100
    invoke-virtual {p3, v1, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const-string v1, "checkInfoItem"

    .line 101
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lru/rocketbank/r2d2/R$id;->title:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v1, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(I)V

    .line 102
    sget p1, Lru/rocketbank/r2d2/R$id;->value:I

    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    const-string v1, "checkInfoItem.value"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    sget-object p1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->bank_name:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    if-ne p5, p1, :cond_0

    .line 104
    sget p1, Lru/rocketbank/r2d2/R$id;->value:I

    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    const-string p2, "checkInfoItem.value"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setEnabled(Z)V

    .line 105
    sget p1, Lru/rocketbank/r2d2/R$id;->value:I

    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    const-string p2, "checkInfoItem.value"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setCursorVisible(Z)V

    .line 106
    sget p1, Lru/rocketbank/r2d2/R$id;->value:I

    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    const-string p2, "checkInfoItem.value"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setFocusable(Z)V

    .line 107
    sget p1, Lru/rocketbank/r2d2/R$id;->value:I

    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    const-string p2, "checkInfoItem.value"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketTextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 109
    :cond_0
    invoke-virtual {p4, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic createField$default(Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;ILjava/lang/String;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lru/rocketbank/r2d2/fragments/transfers/TransferField;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 99
    invoke-direct/range {v0 .. v5}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->createField(ILjava/lang/String;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lru/rocketbank/r2d2/fragments/transfers/TransferField;)V

    return-void
.end method

.method public static final newInstance(Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;)Landroid/support/v4/app/Fragment;
    .locals 4

    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->Companion:Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p0, v1, v2, v3}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$Companion;->newInstance$default(Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$Companion;Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;ZILjava/lang/Object;)Landroid/support/v4/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public static final newInstance(Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;Z)Landroid/support/v4/app/Fragment;
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->Companion:Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$Companion;

    invoke-virtual {v0, p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$Companion;->newInstance(Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;Z)Landroid/support/v4/app/Fragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final format(Lru/rocketbank/r2d2/fragments/transfers/TransferField;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/r2d2/fragments/transfers/TransferField;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "field"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->amount:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    if-ne p1, v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " \u20bd"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "true"

    .line 90
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "\u0414\u0430"

    return-object p1

    :cond_1
    const-string v0, "false"

    .line 91
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "\u041d\u0435\u0442"

    return-object p1

    .line 92
    :cond_2
    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->tax_period:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    if-ne p1, v0, :cond_5

    sget-object p1, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;->Companion:Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Companion;

    const-string p2, "tax_period"

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_3

    const-string p2, ""

    :cond_3
    const-string v0, "tax_period_kind"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-nez p3, :cond_4

    const-string p3, ""

    :cond_4
    invoke-virtual {p1, p2, p3}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Companion;->create(Ljava/lang/String;Ljava/lang/String;)Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 93
    :cond_5
    sget-object p3, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->drawer_status:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    if-ne p1, p3, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "\""

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\" \u2014 "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->statusesMap:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 94
    :cond_6
    sget-object p3, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->tax_basis:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    if-ne p1, p3, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "\""

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\" \u2014 "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->basisMap:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 95
    :cond_7
    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->getPattern()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-static {p2, p1}, Lru/rocketbank/r2d2/utils/PatternFormatter;->format(Ljava/lang/String;Ljava/lang/String;)Lru/rocketbank/r2d2/utils/PatternFormatter$FormattedString;

    move-result-object p1

    const-string p3, "PatternFormatter.format(value, it)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/rocketbank/r2d2/utils/PatternFormatter$FormattedString;->getFormatted()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9

    :cond_8
    move-object p1, p2

    :cond_9
    return-object p1
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 48
    invoke-static {p1, p2, p3}, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;

    move-result-object p2

    .line 49
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->data:Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    const-string v0, "rootView"

    .line 50
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->checkInfoObservable:Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$CheckInfoObservable;

    invoke-virtual {p2, v0}, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->setData(Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$CheckInfoObservable;)V

    .line 51
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const-string v1, "KEY_EDIT_MODE"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->editMode:Z

    .line 52
    iget-boolean v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->editMode:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->setEditMode(Ljava/lang/Boolean;)V

    .line 53
    iget-boolean v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->editMode:Z

    if-eqz v0, :cond_3

    .line 54
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->checkInfoObservable:Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$CheckInfoObservable;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$CheckInfoObservable;->getPurpose()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->data:Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->getMap()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "purpose"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->setValue(Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x4

    .line 57
    new-array v1, v0, [Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    sget-object v2, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->bik:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    aput-object v2, v1, p3

    sget-object v2, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->bank_name:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->corr_bank:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    sget-object v2, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->corr_number:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    const/4 v5, 0x3

    aput-object v2, v1, v5

    invoke-static {v1}, Lkotlin/collections/AbstractList$Companion;->linkedSetOf([Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    move-result-object v1

    .line 58
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->data:Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->getRemittance_kind()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 59
    invoke-static {v2}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->valueOf(Ljava/lang/String;)Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    move-result-object v2

    sget-object v6, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->ordinal()I

    move-result v2

    aget v2, v6, v2

    const/16 v6, 0x8

    const/4 v7, 0x7

    const/4 v8, 0x6

    const/4 v9, 0x5

    packed-switch v2, :pswitch_data_0

    .line 1029
    sget-object v2, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    check-cast v2, Ljava/util/Set;

    goto/16 :goto_2

    :pswitch_0
    const/16 v2, 0xd

    .line 66
    new-array v2, v2, [Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    sget-object v10, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->inn:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    aput-object v10, v2, p3

    sget-object v10, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->kpp:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    aput-object v10, v2, v3

    sget-object v10, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->kbk:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    aput-object v10, v2, v4

    sget-object v10, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->oktmo:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    aput-object v10, v2, v5

    sget-object v10, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->uin:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    aput-object v10, v2, v0

    sget-object v10, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->from:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    aput-object v10, v2, v9

    sget-object v9, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->inn_from:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    aput-object v9, v2, v8

    sget-object v8, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->drawer_status:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    aput-object v8, v2, v7

    sget-object v7, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->tax:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    aput-object v7, v2, v6

    const/16 v6, 0x9

    sget-object v7, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->tax_basis:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    aput-object v7, v2, v6

    const/16 v6, 0xa

    sget-object v7, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->tax_inn:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    aput-object v7, v2, v6

    const/16 v6, 0xb

    sget-object v7, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->tax_period:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    aput-object v7, v2, v6

    const/16 v6, 0xc

    sget-object v7, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->custom_code:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    aput-object v7, v2, v6

    invoke-static {v2}, Lkotlin/collections/AbstractList$Companion;->linkedSetOf([Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    goto :goto_2

    .line 65
    :pswitch_1
    new-array v2, v4, [Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    sget-object v6, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->inn:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    aput-object v6, v2, p3

    sget-object v6, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->kpp:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    aput-object v6, v2, v3

    invoke-static {v2}, Lkotlin/collections/AbstractList$Companion;->linkedSetOf([Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    goto :goto_2

    .line 61
    :pswitch_2
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->data:Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->isGkh()Z

    move-result v2

    if-ne v2, v3, :cond_4

    .line 62
    new-array v2, v6, [Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    sget-object v6, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->inn:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    aput-object v6, v2, p3

    sget-object v6, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->kpp:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    aput-object v6, v2, v3

    sget-object v6, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->gkh_period:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    aput-object v6, v2, v4

    sget-object v6, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->gkh_account_number:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    aput-object v6, v2, v5

    sget-object v6, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->gkh_payment_document_id:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    aput-object v6, v2, v0

    sget-object v6, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->gkh_payment_document_number:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    aput-object v6, v2, v9

    sget-object v6, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->gkh_mc_service_id:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    aput-object v6, v2, v8

    sget-object v6, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->gkh_els:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    aput-object v6, v2, v7

    invoke-static {v2}, Lkotlin/collections/AbstractList$Companion;->linkedSetOf([Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    move-result-object v2

    goto :goto_1

    .line 63
    :cond_4
    new-array v2, v4, [Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    sget-object v6, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->inn:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    aput-object v6, v2, p3

    sget-object v6, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->kpp:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    aput-object v6, v2, v3

    invoke-static {v2}, Lkotlin/collections/AbstractList$Companion;->linkedSetOf([Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    move-result-object v2

    .line 61
    :goto_1
    check-cast v2, Ljava/util/Set;

    .line 59
    :goto_2
    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 70
    :cond_5
    new-array v0, v0, [Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    sget-object v2, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->recipient_name:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    aput-object v2, v0, p3

    sget-object v2, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->purpose:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    aput-object v2, v0, v3

    sget-object v2, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->besp:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    aput-object v2, v0, v4

    sget-object v2, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->amount:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    aput-object v2, v0, v5

    invoke-static {v0}, Lkotlin/collections/AbstractList$Companion;->linkedSetOf([Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 76
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->data:Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->getMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 169
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    .line 170
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 74
    iget-boolean v6, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->editMode:Z

    if-eqz v6, :cond_8

    iget-object v6, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->editModeIgnoreList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_4

    :cond_7
    move v6, p3

    goto :goto_5

    :cond_8
    :goto_4
    move v6, v3

    :goto_5
    if-eqz v6, :cond_6

    .line 172
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 176
    :cond_9
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-ge v0, v5, :cond_a

    add-int/2addr v0, v3

    goto :goto_6

    :cond_a
    const/high16 v4, 0x40000000    # 2.0f

    if-ge v0, v4, :cond_b

    .line 1139
    div-int/lit8 v4, v0, 0x3

    add-int/2addr v0, v4

    goto :goto_6

    :cond_b
    const v0, 0x7fffffff

    .line 176
    :goto_6
    invoke-direct {p3, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast p3, Ljava/util/Map;

    .line 177
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 178
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 179
    check-cast v2, Ljava/util/Map$Entry;

    .line 177
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 75
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_c

    const-string v2, ""

    :cond_c
    invoke-interface {p3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 182
    :cond_d
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 183
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_e
    :goto_8
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 184
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 76
    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v4, v3

    if-eqz v4, :cond_e

    .line 185
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 188
    :cond_f
    check-cast v0, Ljava/util/Map;

    goto :goto_9

    .line 76
    :cond_10
    invoke-static {}, Lkotlin/collections/AbstractList$Companion;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 78
    :goto_9
    sget-object p3, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->custom_code:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    invoke-virtual {v1, p3}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_11

    .line 79
    sget-object p3, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->tax_period:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    invoke-virtual {v1, p3}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 81
    :cond_11
    check-cast v1, Ljava/lang/Iterable;

    .line 189
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    check-cast p3, Ljava/util/Collection;

    .line 190
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    .line 81
    invoke-virtual {v3}, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 191
    :cond_13
    check-cast p3, Ljava/util/List;

    check-cast p3, Ljava/lang/Iterable;

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault$251b5948(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 193
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_b
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 194
    check-cast v2, Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    .line 82
    new-instance v3, Lkotlin/Triple;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->getTitle()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2}, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_14

    const-string v5, ""

    :cond_14
    invoke-virtual {p0, v2, v5, v0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->format(Lru/rocketbank/r2d2/fragments/transfers/TransferField;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v2}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 195
    :cond_15
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_c
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Triple;

    invoke-virtual {v0}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v0}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    .line 83
    iget-object v0, p2, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->fields:Landroid/widget/LinearLayout;

    const-string v1, "rootView.fields"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v0

    check-cast v6, Landroid/view/ViewGroup;

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->createField(ILjava/lang/String;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lru/rocketbank/r2d2/fragments/transfers/TransferField;)V

    goto :goto_c

    .line 85
    :cond_16
    invoke-virtual {p2}, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onDestroyView()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onNextButtonClick()V
    .locals 4

    .line 132
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->data:Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    if-eqz v0, :cond_2

    .line 133
    iget-boolean v1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->editMode:Z

    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {v0}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->getMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "purpose"

    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->checkInfoObservable:Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$CheckInfoObservable;

    invoke-virtual {v3}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$CheckInfoObservable;->getPurpose()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v3

    invoke-virtual {v3}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getCleanValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->startActivity(Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;Landroid/content/Context;)V

    return-void

    .line 137
    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->getMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "custom_code"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-virtual {v0}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->getMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "gkh_period"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type ru.rocketbank.r2d2.fragments.transfers.BankAmountActivity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast v1, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;

    invoke-virtual {v1, v0}, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->callRemittanceTransferLoader(Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;)V

    return-void

    :cond_2
    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 122
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->validSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->unsubscribe(Lrx/Subscription;)V

    .line 123
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 4

    .line 113
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onResume()V

    .line 114
    move-object v0, p0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->updateNextButton(Landroid/support/v4/app/Fragment;)V

    .line 116
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->checkInfoObservable:Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$CheckInfoObservable;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$CheckInfoObservable;->getValidObservable()Lrx/Observable;

    move-result-object v0

    .line 117
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 118
    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$onResume$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$onResume$1;-><init>(Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;)V

    check-cast v1, Lrx/functions/Action1;

    sget-object v2, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$onResume$2;->INSTANCE:Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$onResume$2;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_0

    new-instance v3, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$sam$rx_functions_Action1$0;

    invoke-direct {v3, v2}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$sam$rx_functions_Action1$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    move-object v2, v3

    :cond_0
    check-cast v2, Lrx/functions/Action1;

    invoke-virtual {v0, v1, v2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->validSubscription:Lrx/Subscription;

    return-void
.end method

.method public final updateNextButton(Landroid/support/v4/app/Fragment;)V
    .locals 5

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->editMode:Z

    if-eqz v1, :cond_0

    const v1, 0x7f110167

    goto :goto_0

    :cond_0
    const v1, 0x7f1103ff

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lru/rocketbank/core/events/NextButtonEvent;

    iget-boolean v3, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->editMode:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->checkInfoObservable:Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$CheckInfoObservable;

    invoke-virtual {v3}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$CheckInfoObservable;->isValid()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, p1, v3, v4, v0}, Lru/rocketbank/core/events/NextButtonEvent;-><init>(Landroid/support/v4/app/Fragment;ZLjava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
