.class public final Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;
.super Lru/rocketbank/r2d2/fragments/RocketFragment;
.source "TransferBankFragment.kt"

# interfaces
.implements Lru/rocketbank/r2d2/fragments/NextButtonListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransferBankFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransferBankFragment.kt\nru/rocketbank/r2d2/fragments/transfers/TransferBankFragment\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,1301:1\n199#2:1302\n199#2:1303\n57#2:1306\n82#2,3:1307\n57#2:1310\n82#2,3:1311\n10940#3,2:1304\n8959#3:1314\n9276#3,3:1315\n8959#3:1324\n9276#3,3:1325\n1246#4:1318\n1315#4,3:1319\n1246#4:1328\n1315#4,3:1329\n49#5,2:1322\n49#5,2:1332\n*E\n*S KotlinDebug\n*F\n+ 1 TransferBankFragment.kt\nru/rocketbank/r2d2/fragments/transfers/TransferBankFragment\n*L\n156#1:1302\n165#1:1303\n869#1:1306\n869#1,3:1307\n870#1:1310\n870#1,3:1311\n615#1,2:1304\n99#1:1314\n99#1,3:1315\n105#1:1324\n105#1,3:1325\n100#1:1318\n100#1,3:1319\n106#1:1328\n106#1,3:1329\n102#1,2:1322\n108#1,2:1332\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$Companion;

.field public static final KEY_ANDANCED_MAP:Ljava/lang/String; = "KEY_ANDANCED_MAP"

.field public static final KEY_BASIS:Ljava/lang/String; = "KEY_BASIS"

.field public static final KEY_EXTRA:Ljava/lang/String; = "KEY_EXTRA"

.field public static final KEY_GKH:Ljava/lang/String; = "KEY_GKH"

.field public static final KEY_KIND:Ljava/lang/String; = "KEY_KIND"

.field public static final KEY_MESSAGE:Ljava/lang/String; = "KEY_MESSAGE"

.field public static final KEY_PERIOD:Ljava/lang/String; = "KEY_PERIOD"

.field public static final KEY_STATUS:Ljava/lang/String; = "KEY_STATUS"

.field public static final KEY_TRANSFER_MAP:Ljava/lang/String; = "KEY_TRANSFER_MAP"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private authorization:Lru/rocketbank/core/user/Authorization;

.field private final basisList:[Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;

.field private bikValidSubscription:Lrx/Subscription;

.field private final budgetViewModel:Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

.field private final corporateViewModel:Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;

.field private corrNumberSubscription:Lrx/Subscription;

.field private cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

.field private extra:Ljava/lang/String;

.field public fragmentView:Landroid/view/View;

.field private getBikSubscription:Lrx/Subscription;

.field private getInnSubscription:Lrx/Subscription;

.field private getKindSubscription:Lrx/Subscription;

.field private final helpButtons$delegate:Lkotlin/Lazy;

.field private final individualViewModel:Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;

.field private innValidSubscription:Lrx/Subscription;

.field private isGkh:Z

.field private final materialAssistanceList:[Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private popup:Landroid/widget/PopupWindow;

.field private recipientNameSubscription:Lrx/Subscription;

.field private remittanceKind:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

.field private rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

.field private spinnerStatus:Landroid/widget/Spinner;

.field private final statusesList:[Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;

.field private taxSwitchView:Landroid/support/v7/widget/CardView;

.field private final transferViewModel:Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

.field private final uinLengths:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private userSubscription:Lrx/Subscription;

.field private validSubscription:Lrx/Subscription;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "helpButtons"

    const-string v4, "getHelpButtons()[Landroid/widget/ImageButton;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->Companion:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 14

    .line 73
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;-><init>()V

    .line 89
    sget-object v0, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->unknown:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->remittanceKind:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    .line 98
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

    .line 1314
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 1315
    array-length v3, v0

    move v4, v2

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v3, :cond_0

    aget-object v6, v0, v4

    const-string v7, "it"

    .line 99
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v6

    check-cast v8, Ljava/lang/CharSequence;

    new-array v9, v5, [Ljava/lang/String;

    const-string v5, " | "

    aput-object v5, v9, v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1317
    :cond_0
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 1318
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault$251b5948(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 1319
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1320
    check-cast v3, Ljava/util/List;

    .line 100
    new-instance v4, Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v6, v3}, Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1321
    :cond_1
    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 101
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_2

    .line 1322
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1323
    :cond_2
    new-array v1, v2, [Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    check-cast v0, [Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->basisList:[Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;

    .line 104
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

    .line 1324
    new-instance v1, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 1325
    array-length v3, v0

    move v4, v2

    :goto_2
    if-ge v4, v3, :cond_4

    aget-object v6, v0, v4

    const-string v7, "it"

    .line 105
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v6

    check-cast v8, Ljava/lang/CharSequence;

    new-array v9, v5, [Ljava/lang/String;

    const-string v6, " | "

    aput-object v6, v9, v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1327
    :cond_4
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 1328
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault$251b5948(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 1329
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1330
    check-cast v3, Ljava/util/List;

    .line 106
    new-instance v4, Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v6, v3}, Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1331
    :cond_5
    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 107
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_6

    .line 1332
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1333
    :cond_6
    new-array v1, v2, [Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    check-cast v0, [Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->statusesList:[Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;

    .line 110
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->materialAssistanceList:[Ljava/lang/String;

    .line 112
    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$helpButtons$2;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$helpButtons$2;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/ExceptionsKt__ExceptionsKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->helpButtons$delegate:Lkotlin/Lazy;

    .line 114
    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->basisList:[Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;

    aget-object v1, v1, v2

    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->statusesList:[Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;

    array-length v4, v3

    move v6, v2

    :goto_4
    if-ge v6, v4, :cond_9

    aget-object v7, v3, v6

    invoke-virtual {v7}, Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;->getCode()Ljava/lang/String;

    move-result-object v8

    const-string v9, "24"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_9
    const/4 v7, 0x0

    :goto_5
    if-nez v7, :cond_a

    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->statusesList:[Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;

    aget-object v7, v3, v2

    :cond_a
    invoke-direct {v0, v1, v7}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;-><init>(Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->budgetViewModel:Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    .line 115
    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->materialAssistanceList:[Ljava/lang/String;

    aget-object v1, v1, v2

    const-string v3, "materialAssistanceList[0]"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->individualViewModel:Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;

    .line 116
    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->corporateViewModel:Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;

    .line 117
    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->transferViewModel:Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    const/4 v0, 0x2

    .line 184
    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v0}, Lkotlin/collections/AbstractList$Companion;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->uinLengths:Ljava/util/Set;

    return-void
.end method

.method public static final synthetic access$addZerosIfNeed(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Landroid/widget/EditText;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->addZerosIfNeed(Landroid/widget/EditText;I)V

    return-void
.end method

.method public static final synthetic access$changeTaxPeriod(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Z)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->changeTaxPeriod(Z)V

    return-void
.end method

.method public static final synthetic access$checkUinAndShowError(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Landroid/widget/EditText;)Z
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->checkUinAndShowError(Landroid/widget/EditText;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getBasisList$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)[Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;
    .locals 0

    .line 73
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->basisList:[Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;

    return-object p0
.end method

.method public static final synthetic access$getBudgetViewModel$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;
    .locals 0

    .line 73
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->budgetViewModel:Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    return-object p0
.end method

.method public static final synthetic access$getCorporateViewModel$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;
    .locals 0

    .line 73
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->corporateViewModel:Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;

    return-object p0
.end method

.method public static final synthetic access$getErrorMessage(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->getErrorMessage(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getExtra$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->extra:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getIndividualViewModel$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;
    .locals 0

    .line 73
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->individualViewModel:Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;

    return-object p0
.end method

.method public static final synthetic access$getMaterialAssistanceList$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)[Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->materialAssistanceList:[Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getMessage$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->message:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getName$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->name:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getRemittanceKind$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;
    .locals 0

    .line 73
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->remittanceKind:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    return-object p0
.end method

.method public static final synthetic access$getSpinnerStatus$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)Landroid/widget/Spinner;
    .locals 1

    .line 73
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->spinnerStatus:Landroid/widget/Spinner;

    if-nez p0, :cond_0

    const-string v0, "spinnerStatus"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getTransferViewModel$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;
    .locals 0

    .line 73
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->transferViewModel:Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    return-object p0
.end method

.method public static final synthetic access$hideKeyboard(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Landroid/widget/EditText;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->hideKeyboard(Landroid/widget/EditText;)V

    return-void
.end method

.method public static final synthetic access$hidePopup(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->hidePopup()V

    return-void
.end method

.method public static final synthetic access$isGkh$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->isGkh:Z

    return p0
.end method

.method public static final synthetic access$loadBikLogo(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->loadBikLogo()V

    return-void
.end method

.method public static final synthetic access$requestBik(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Z)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->requestBik(Z)V

    return-void
.end method

.method public static final synthetic access$requestInn(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;ZLandroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;)V
    .locals 0

    .line 73
    invoke-direct/range {p0 .. p8}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->requestInn(Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;ZLandroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;)V

    return-void
.end method

.method public static final synthetic access$requestKind(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Z)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->requestKind(Z)V

    return-void
.end method

.method public static final synthetic access$setExtra$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->extra:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setGkh$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->isGkh:Z

    return-void
.end method

.method public static final synthetic access$setMessage$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->message:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setName$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->name:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setPurpose(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->setPurpose(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)V

    return-void
.end method

.method public static final synthetic access$setRemittanceKind$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->remittanceKind:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    return-void
.end method

.method public static final synthetic access$setSpinnerStatus$p(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Landroid/widget/Spinner;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->spinnerStatus:Landroid/widget/Spinner;

    return-void
.end method

.method public static final synthetic access$showDateChooseDialog(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->showDateChooseDialog()V

    return-void
.end method

.method public static final synthetic access$showDatePeriodChooseDialog(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->showDatePeriodChooseDialog()V

    return-void
.end method

.method public static final synthetic access$showDatePickerDialog(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->showDatePickerDialog()V

    return-void
.end method

.method public static final synthetic access$showKind(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->showKind(Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static final synthetic access$showPopup(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Landroid/widget/ImageButton;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->showPopup(Landroid/widget/ImageButton;I)V

    return-void
.end method

.method public static final synthetic access$subscribeRecipientName(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->subscribeRecipientName()V

    return-void
.end method

.method public static final synthetic access$subscribeValid(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->subscribeValid()V

    return-void
.end method

.method public static final synthetic access$updateStatusList(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Landroid/view/View;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->updateStatusList(Landroid/view/View;)V

    return-void
.end method

.method private final addZerosIfNeed(Landroid/widget/EditText;I)V
    .locals 7

    .line 303
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 304
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, p2, :cond_2

    .line 305
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr p2, v1

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    if-lez p2, :cond_1

    const/16 v2, 0x30

    .line 308
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 311
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private final changeTaxPeriod(Z)V
    .locals 2

    .line 264
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "fragmentView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    sget v1, Lru/rocketbank/r2d2/R$id;->budgetView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "fragmentView.budgetView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    sget v1, Lru/rocketbank/r2d2/R$id;->taxPeriod:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketEditText;

    if-eqz p1, :cond_1

    const-string p1, "editText"

    .line 266
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketEditText;->setFocusable(Z)V

    .line 267
    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketEditText;->setFocusableInTouchMode(Z)V

    .line 268
    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketEditText;->setClickable(Z)V

    return-void

    :cond_1
    const-string p1, "editText"

    .line 270
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketEditText;->setFocusable(Z)V

    .line 271
    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketEditText;->setFocusableInTouchMode(Z)V

    .line 272
    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketEditText;->setClickable(Z)V

    return-void
.end method

.method private final checkPurposeIsNotEmpty(Landroid/widget/EditText;)V
    .locals 1

    .line 277
    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$checkPurposeIsNotEmpty$1;

    invoke-direct {v0, p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$checkPurposeIsNotEmpty$1;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Landroid/widget/EditText;)V

    check-cast v0, Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private final checkUinAndShowError(Landroid/widget/EditText;)Z
    .locals 3

    .line 293
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    .line 294
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 296
    :cond_0
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->uinLengths:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const v0, 0x7f1104c2

    .line 298
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    return p1
.end method

.method private final fillUserDetails(Lru/rocketbank/core/model/UserModel;)V
    .locals 3

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 421
    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getLastName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getSecondName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 424
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const-string v1, "-"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_1

    const-string v1, " "

    .line 425
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->name:Ljava/lang/String;

    return-void
.end method

.method private final getErrorMessage(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 704
    instance-of v0, p2, Lru/rocketbank/core/network/exception/RocketResponseException;

    const v1, 0x7f11018d

    if-eqz v0, :cond_1

    .line 705
    check-cast p2, Lru/rocketbank/core/network/exception/RocketResponseException;

    invoke-virtual {p2}, Lru/rocketbank/core/network/exception/RocketResponseException;->isNetworkError()Z

    move-result v0

    if-nez v0, :cond_1

    .line 706
    invoke-virtual {p2}, Lru/rocketbank/core/network/exception/RocketResponseException;->getGenericRequestResponseData()Lru/rocketbank/core/model/dto/GenericRequestResponseData;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 707
    invoke-virtual {p2}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;->getErrors()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p1, "context.getString(R.string.error_occur)"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object p2

    .line 711
    :cond_1
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.getString(R.string.error_occur)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getHelpButtons()[Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->helpButtons$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/widget/ImageButton;

    return-object v0
.end method

.method private final getSpannedText(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 2

    .line 487
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/16 v0, 0x3f

    .line 488
    invoke-static {p1, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    const-string v0, "Html.fromHtml(text, Html.FROM_HTML_MODE_COMPACT)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 490
    :cond_0
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    const-string v0, "Html.fromHtml(text)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final hideFields()V
    .locals 3

    .line 363
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "fragmentView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    sget v1, Lru/rocketbank/r2d2/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/View;

    const-string v2, "$receiver"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3014
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 364
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_2

    const-string v2, "fragmentView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    sget v2, Lru/rocketbank/r2d2/R$id;->subTitle:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    if-eqz v0, :cond_3

    check-cast v0, Landroid/view/View;

    const-string v2, "$receiver"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4014
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 365
    :cond_3
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_4

    const-string v2, "fragmentView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    sget v2, Lru/rocketbank/r2d2/R$id;->budgetView:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    check-cast v0, Landroid/view/View;

    const-string v2, "$receiver"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5014
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 366
    :cond_5
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_6

    const-string v2, "fragmentView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    sget v2, Lru/rocketbank/r2d2/R$id;->individualView:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    check-cast v0, Landroid/view/View;

    const-string v2, "$receiver"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6014
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 367
    :cond_7
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_8

    const-string v2, "fragmentView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    sget v2, Lru/rocketbank/r2d2/R$id;->corporateView:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    check-cast v0, Landroid/view/View;

    const-string v2, "$receiver"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7014
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 368
    :cond_9
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_a

    const-string v2, "fragmentView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    sget v2, Lru/rocketbank/r2d2/R$id;->textViewKindError:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    if-eqz v0, :cond_b

    check-cast v0, Landroid/view/View;

    const-string v2, "$receiver"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8014
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 369
    :cond_b
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->transferViewModel:Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->setCard_number_visible(Z)V

    return-void
.end method

.method private final hideKeyboard(Landroid/widget/EditText;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 851
    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$hideKeyboard$1;

    invoke-direct {v0, p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$hideKeyboard$1;-><init>(Landroid/widget/EditText;)V

    check-cast v0, Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    return-void
.end method

.method private final hidePopup()V
    .locals 6

    .line 615
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->getHelpButtons()[Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    .line 1304
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    if-eqz v3, :cond_0

    const v4, 0x3e75c28f    # 0.24f

    .line 616
    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setAlpha(F)V

    :cond_0
    if-eqz v3, :cond_2

    .line 617
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const v5, 0x7f060228

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setColorFilter(I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 620
    :cond_3
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->popup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 621
    :cond_4
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_5

    const-string v1, "fragmentView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    sget v1, Lru/rocketbank/r2d2/R$id;->budgetView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "fragmentView.budgetView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    sget v1, Lru/rocketbank/r2d2/R$id;->buttonInfoUin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_6

    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$hidePopup$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$hidePopup$2;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 622
    :cond_6
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_7

    const-string v1, "fragmentView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    sget v1, Lru/rocketbank/r2d2/R$id;->budgetView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "fragmentView.budgetView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    sget v1, Lru/rocketbank/r2d2/R$id;->buttonInfoKbk:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_8

    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$hidePopup$3;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$hidePopup$3;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_8
    return-void
.end method

.method private final loadBikLogo()V
    .locals 5

    .line 775
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->transferViewModel:Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->getLogo()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 778
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_1

    const-string v1, "fragmentView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    sget v1, Lru/rocketbank/r2d2/R$id;->img_logo:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_2

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->transferViewModel:Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->getLogo()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080175

    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    if-nez v3, :cond_3

    const-string v4, "cropCircleTransformation"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-static {v0, v1, v2, v3}, Lru/rocketbank/core/utils/ImageHelper;->loadRound(Landroid/widget/ImageView;Ljava/lang/String;ILjp/wasabeef/glide/transformations/CropCircleTransformation;)V

    return-void
.end method

.method private final requestBik(Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 750
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

    if-nez p1, :cond_0

    const-string v0, "rocketAPI"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->transferViewModel:Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->getBik()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getCleanValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lru/rocketbank/core/network/api/RocketAPI;->getBiks(Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    .line 751
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 752
    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestBik$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestBik$1;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)V

    check-cast v0, Lrx/functions/Action1;

    .line 757
    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestBik$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestBik$2;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)V

    check-cast v1, Lrx/functions/Action1;

    .line 752
    invoke-virtual {p1, v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->getBikSubscription:Lrx/Subscription;

    return-void

    .line 766
    :cond_1
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->hideFields()V

    .line 767
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->transferViewModel:Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->getBank_name()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->setValue(Ljava/lang/String;)V

    .line 768
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->transferViewModel:Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->getCorr_bank()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object p1

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->setValue(Ljava/lang/String;)V

    .line 769
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->transferViewModel:Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->getLogo()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->setValue(Ljava/lang/String;)V

    .line 770
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->transferViewModel:Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->notifyPropertyChanged(I)V

    return-void
.end method

.method private final requestInn(Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;ZLandroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;)V
    .locals 7

    if-eqz p2, :cond_1

    const-string p2, "$receiver"

    .line 721
    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 14006
    invoke-virtual {p3, p2}, Landroid/view/View;->setVisibility(I)V

    .line 722
    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 723
    invoke-virtual {p5, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 724
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

    if-nez p2, :cond_0

    const-string v0, "rocketAPI"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p6}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getCleanValue()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p1}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->name()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->transferViewModel:Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->getBik()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getCleanValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->transferViewModel:Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->getCorr_number()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getCleanValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, p6, p1, v0, v1}, Lru/rocketbank/core/network/api/RocketAPI;->getInn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    .line 725
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 726
    new-instance p2, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestInn$1;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p3

    move-object v3, p7

    move-object v4, p8

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestInn$1;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Landroid/view/View;Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;Landroid/widget/TextView;Landroid/widget/TextView;)V

    check-cast p2, Lrx/functions/Action1;

    .line 738
    new-instance p6, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestInn$2;

    invoke-direct {p6, p0, p4, p5, p3}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestInn$2;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V

    check-cast p6, Lrx/functions/Action1;

    .line 726
    invoke-virtual {p1, p2, p6}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->getInnSubscription:Lrx/Subscription;

    :cond_1
    return-void
.end method

.method private final requestKind(Z)V
    .locals 2

    .line 654
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->hideFields()V

    if-nez p1, :cond_0

    return-void

    .line 658
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez p1, :cond_1

    const-string v0, "fragmentView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    sget v0, Lru/rocketbank/r2d2/R$id;->cardNumberProgressBar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    if-eqz p1, :cond_2

    check-cast p1, Landroid/view/View;

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 13006
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 660
    :cond_2
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

    if-nez p1, :cond_3

    const-string v0, "rocketAPI"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->transferViewModel:Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->getBik()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getCleanValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->transferViewModel:Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->getCorr_number()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getCleanValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lru/rocketbank/core/network/api/RocketAPI;->remittancesKind(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    .line 661
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 662
    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestKind$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestKind$1;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)V

    check-cast v0, Lrx/functions/Action1;

    .line 672
    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestKind$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$requestKind$2;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)V

    check-cast v1, Lrx/functions/Action1;

    .line 662
    invoke-virtual {p1, v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->getKindSubscription:Lrx/Subscription;

    return-void
.end method

.method private final setDefaultPurpose()V
    .locals 2

    .line 399
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->individualViewModel:Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;->getPurpose()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 400
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->remittanceKind:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    sget-object v1, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 401
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->individualViewModel:Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;->getPurpose()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v0

    const v1, 0x7f110131

    invoke-direct {p0, v0, v1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->setPurpose(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final setPurpose(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)V
    .locals 0

    .line 408
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private final setPurposeHint(Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 373
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const p2, 0x7f1104b0

    .line 375
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(I)V

    return-void
.end method

.method private final showBudget(Ljava/lang/String;)V
    .locals 3

    .line 510
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->transferViewModel:Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->budgetViewModel:Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    check-cast v1, Lru/rocketbank/r2d2/utils/ViewModelObservable;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->setAdditionalViewModel(Lru/rocketbank/r2d2/utils/ViewModelObservable;)V

    .line 511
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "fragmentView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    sget v1, Lru/rocketbank/r2d2/R$id;->budgetView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "fragmentView.budgetView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const-string v1, "$receiver"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 12006
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 512
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_1

    const-string v1, "fragmentView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    sget v1, Lru/rocketbank/r2d2/R$id;->budgetView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "fragmentView.budgetView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    sget v1, Lru/rocketbank/r2d2/R$id;->edittext_transfers_bank_purpose:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketEditText;

    const-string v1, "fragmentView.budgetView.\u2026xt_transfers_bank_purpose"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/EditText;

    invoke-direct {p0, v0, p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->setPurposeHint(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 513
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez p1, :cond_2

    const-string v0, "fragmentView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    sget v0, Lru/rocketbank/r2d2/R$id;->budgetView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string v0, "fragmentView.budgetView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    sget v0, Lru/rocketbank/r2d2/R$id;->spinnerStatus:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    const-string v0, "fragmentView.budgetView.spinnerStatus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showBudget$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showBudget$1;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)V

    check-cast v0, Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 523
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez p1, :cond_3

    const-string v0, "fragmentView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    sget v0, Lru/rocketbank/r2d2/R$id;->budgetView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string v0, "fragmentView.budgetView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    sget v0, Lru/rocketbank/r2d2/R$id;->taxBasis:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    .line 524
    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/MultilineArrayAdapter;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    const-string v2, "context!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->basisList:[Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;

    invoke-direct {v0, v1, v2}, Lru/rocketbank/r2d2/fragments/transfers/MultilineArrayAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    const-string v1, "taxBasisSpinner"

    .line 525
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 526
    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showBudget$2;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showBudget$2;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)V

    check-cast v0, Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 536
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez p1, :cond_5

    const-string v0, "fragmentView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    sget v0, Lru/rocketbank/r2d2/R$id;->budgetView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string v0, "fragmentView.budgetView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    sget v0, Lru/rocketbank/r2d2/R$id;->taxPeriod:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketEditText;

    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showBudget$3;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showBudget$3;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 544
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez p1, :cond_6

    const-string v0, "fragmentView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    sget v0, Lru/rocketbank/r2d2/R$id;->budgetView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string v0, "fragmentView.budgetView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    sget v0, Lru/rocketbank/r2d2/R$id;->oktmo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketEditText;

    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->oktmo:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->getPattern()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/utils/PatternFormatter;->setup(Lru/rocketbank/core/widgets/RocketEditText;Ljava/lang/String;)V

    .line 545
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez p1, :cond_7

    const-string v0, "fragmentView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    sget v0, Lru/rocketbank/r2d2/R$id;->budgetView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string v0, "fragmentView.budgetView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    sget v0, Lru/rocketbank/r2d2/R$id;->kbk:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketEditText;

    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->kbk:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->getPattern()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/utils/PatternFormatter;->setup(Lru/rocketbank/core/widgets/RocketEditText;Ljava/lang/String;)V

    .line 546
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez p1, :cond_8

    const-string v0, "fragmentView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    sget v0, Lru/rocketbank/r2d2/R$id;->budgetView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const v0, 0x7f090209

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_9

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketEditText"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    check-cast p1, Lru/rocketbank/core/widgets/RocketEditText;

    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->kpp:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->getPattern()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/utils/PatternFormatter;->setup(Lru/rocketbank/core/widgets/RocketEditText;Ljava/lang/String;)V

    .line 548
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez p1, :cond_a

    const-string v0, "fragmentView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    sget v0, Lru/rocketbank/r2d2/R$id;->budgetView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string v0, "fragmentView.budgetView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    sget v0, Lru/rocketbank/r2d2/R$id;->buttonInfoUin:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showBudget$4;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showBudget$4;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 549
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez p1, :cond_b

    const-string v0, "fragmentView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    sget v0, Lru/rocketbank/r2d2/R$id;->budgetView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string v0, "fragmentView.budgetView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    sget v0, Lru/rocketbank/r2d2/R$id;->buttonInfoKbk:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showBudget$5;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showBudget$5;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 551
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez p1, :cond_c

    const-string v0, "fragmentView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    sget v0, Lru/rocketbank/r2d2/R$id;->budgetView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showBudget$6;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showBudget$6;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)V

    check-cast v0, Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 556
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez p1, :cond_d

    const-string v0, "fragmentView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_d
    sget v0, Lru/rocketbank/r2d2/R$id;->budgetView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const v0, 0x7f090370

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_e

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.support.v7.widget.SwitchCompat"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    check-cast p1, Landroid/support/v7/widget/SwitchCompat;

    .line 557
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->budgetViewModel:Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getTax()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 558
    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showBudget$7;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showBudget$7;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)V

    check-cast v0, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private final showCorporate(Ljava/lang/String;Z)V
    .locals 2

    .line 465
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->transferViewModel:Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->corporateViewModel:Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;

    check-cast v1, Lru/rocketbank/r2d2/utils/ViewModelObservable;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->setAdditionalViewModel(Lru/rocketbank/r2d2/utils/ViewModelObservable;)V

    .line 466
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "fragmentView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    sget v1, Lru/rocketbank/r2d2/R$id;->corporateView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "fragmentView.corporateView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const-string v1, "$receiver"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 10006
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 467
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_1

    const-string v1, "fragmentView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    sget v1, Lru/rocketbank/r2d2/R$id;->corporateView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090209

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketEditText"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast v0, Lru/rocketbank/core/widgets/RocketEditText;

    sget-object v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->kpp:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->getPattern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/utils/PatternFormatter;->setup(Lru/rocketbank/core/widgets/RocketEditText;Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_3

    const-string v1, "fragmentView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    sget v1, Lru/rocketbank/r2d2/R$id;->corporateView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "fragmentView.corporateView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    sget v1, Lru/rocketbank/r2d2/R$id;->editTextCorporatePurpose:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketEditText;

    const-string v1, "fragmentView.corporateVi\u2026.editTextCorporatePurpose"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/EditText;

    invoke-direct {p0, v0, p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->setPurposeHint(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 470
    iput-boolean p2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->isGkh:Z

    .line 471
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->corporateViewModel:Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->getGkhVisible()Landroid/databinding/ObservableBoolean;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 472
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez p1, :cond_4

    const-string p2, "fragmentView"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    sget p2, Lru/rocketbank/r2d2/R$id;->corporateView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string p2, "fragmentView.corporateView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    sget p2, Lru/rocketbank/r2d2/R$id;->gkh_info:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    const-string p2, "fragmentView.corporateView.gkh_info"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p2, 0x7f11020a

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "getString(R.string.gkh_info)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->getSpannedText(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez p1, :cond_5

    const-string p2, "fragmentView"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    sget p2, Lru/rocketbank/r2d2/R$id;->corporateView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string p2, "fragmentView.corporateView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    sget p2, Lru/rocketbank/r2d2/R$id;->gkhPeriod:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    new-instance p2, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showCorporate$1;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showCorporate$1;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static bridge synthetic showCorporate$default(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 464
    :cond_0
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->showCorporate(Ljava/lang/String;Z)V

    return-void
.end method

.method private final showDateChooseDialog()V
    .locals 3

    .line 782
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110383

    .line 783
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 784
    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showDateChooseDialog$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showDateChooseDialog$1;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)V

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    const v2, 0x7f030005

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 789
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private final showDateCustomDialog()V
    .locals 5

    .line 828
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00aa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "view"

    .line 829
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lru/rocketbank/r2d2/R$id;->editText:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketEditText;

    .line 830
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 831
    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->budgetViewModel:Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    invoke-virtual {v3}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getTax_period_date()Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 832
    instance-of v4, v3, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Custom;

    if-eqz v4, :cond_1

    .line 833
    check-cast v3, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Custom;

    invoke-virtual {v3}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Custom;->getValue()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lru/rocketbank/core/widgets/RocketEditText;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "editText"

    .line 834
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lru/rocketbank/core/widgets/RocketEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Lru/rocketbank/core/widgets/RocketEditText;->setSelection(I)V

    :cond_1
    const v3, 0x7f110188

    .line 836
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 837
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 838
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-le v0, v3, :cond_2

    .line 839
    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showDateCustomDialog$1;

    invoke-direct {v0, p0, v1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showDateCustomDialog$1;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Lru/rocketbank/core/widgets/RocketEditText;)V

    check-cast v0, Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    :cond_2
    const v0, 0x7f11032e

    .line 841
    new-instance v3, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showDateCustomDialog$2;

    invoke-direct {v3, p0, v1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showDateCustomDialog$2;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Lru/rocketbank/core/widgets/RocketEditText;)V

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f11008b

    .line 845
    new-instance v3, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showDateCustomDialog$3;

    invoke-direct {v3, p0, v1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showDateCustomDialog$3;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Lru/rocketbank/core/widgets/RocketEditText;)V

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 846
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 847
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_3

    const-string v2, "fragmentView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    new-instance v2, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showDateCustomDialog$4;

    invoke-direct {v2, v1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showDateCustomDialog$4;-><init>(Lru/rocketbank/core/widgets/RocketEditText;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final showDatePeriodChooseDialog()V
    .locals 4

    .line 792
    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;-><init>()V

    .line 793
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->budgetViewModel:Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getTax_period_date()Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->budgetViewModel:Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getTax_period_date()Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;

    move-result-object v1

    instance-of v1, v1, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;

    if-eqz v1, :cond_0

    .line 794
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 795
    sget-object v2, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->Companion:Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$Companion;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$Companion;->getDATE_PERIOD()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->budgetViewModel:Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    invoke-virtual {v3}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getTax_period_date()Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;

    move-result-object v3

    check-cast v3, Ljava/io/Serializable;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 794
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->setArguments(Landroid/os/Bundle;)V

    .line 798
    :cond_0
    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showDatePeriodChooseDialog$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showDatePeriodChooseDialog$2;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->onChooseDate(Lkotlin/jvm/functions/Function1;)V

    .line 799
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 800
    check-cast v0, Landroid/support/v4/app/Fragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 801
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private final showDatePickerDialog()V
    .locals 11

    .line 806
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 807
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->budgetViewModel:Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getTax_period_date()Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 808
    instance-of v5, v1, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Date;

    if-eqz v5, :cond_3

    .line 809
    check-cast v1, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Date;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Date;->getYear()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    :goto_0
    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 810
    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Date;->getMonth()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    :goto_1
    invoke-virtual {v0, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 811
    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Date;->getDay()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    :goto_2
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 813
    :cond_3
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 814
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 815
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 818
    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showDatePickerDialog$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showDatePickerDialog$1;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)V

    move-object v7, v1

    check-cast v7, Landroid/app/DatePickerDialog$OnDateSetListener;

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 824
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    return-void
.end method

.method private final showIndividual(Ljava/lang/String;Z)V
    .locals 4

    .line 379
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->individualViewModel:Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p2}, Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;->setMaterialAssistance(Ljava/lang/Boolean;)V

    .line 380
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->transferViewModel:Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->individualViewModel:Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;

    check-cast v0, Lru/rocketbank/r2d2/utils/ViewModelObservable;

    invoke-virtual {p2, v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->setAdditionalViewModel(Lru/rocketbank/r2d2/utils/ViewModelObservable;)V

    .line 381
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez p2, :cond_0

    const-string v0, "fragmentView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    sget v0, Lru/rocketbank/r2d2/R$id;->individualView:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    const-string v0, "fragmentView.individualView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    const-string v0, "$receiver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 9006
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 383
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez p2, :cond_1

    const-string v0, "fragmentView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    sget v0, Lru/rocketbank/r2d2/R$id;->individualView:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    const-string v0, "fragmentView.individualView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    sget v0, Lru/rocketbank/r2d2/R$id;->materialAssistTypeSpinner:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    .line 384
    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/MultilineArrayAdapter;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    const-string v2, "context!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->materialAssistanceList:[Ljava/lang/String;

    const-string v3, "materialAssistanceList"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lru/rocketbank/r2d2/fragments/transfers/MultilineArrayAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    const-string v1, "materialAssistTypeSpinner"

    .line 385
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 386
    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showIndividual$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showIndividual$1;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)V

    check-cast v0, Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 395
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez p2, :cond_3

    const-string v0, "fragmentView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    sget v0, Lru/rocketbank/r2d2/R$id;->individualView:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    const-string v0, "fragmentView.individualView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    sget v0, Lru/rocketbank/r2d2/R$id;->editTextIndividualPurpose:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/widgets/RocketEditText;

    const-string v0, "fragmentView.individualV\u2026editTextIndividualPurpose"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/EditText;

    invoke-direct {p0, p2, p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->setPurposeHint(Landroid/widget/EditText;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic showIndividual$default(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 378
    :cond_0
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->showIndividual(Ljava/lang/String;Z)V

    return-void
.end method

.method private final showIp(Ljava/lang/String;)V
    .locals 2

    .line 495
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->transferViewModel:Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->corporateViewModel:Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;

    check-cast v1, Lru/rocketbank/r2d2/utils/ViewModelObservable;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->setAdditionalViewModel(Lru/rocketbank/r2d2/utils/ViewModelObservable;)V

    .line 496
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "fragmentView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    sget v1, Lru/rocketbank/r2d2/R$id;->corporateView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "fragmentView.corporateView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const-string v1, "$receiver"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 11006
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 497
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_1

    const-string v1, "fragmentView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    sget v1, Lru/rocketbank/r2d2/R$id;->corporateView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090209

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketEditText"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast v0, Lru/rocketbank/core/widgets/RocketEditText;

    sget-object v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->kpp:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->getPattern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/utils/PatternFormatter;->setup(Lru/rocketbank/core/widgets/RocketEditText;Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_3

    const-string v1, "fragmentView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    sget v1, Lru/rocketbank/r2d2/R$id;->corporateView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "fragmentView.corporateView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    sget v1, Lru/rocketbank/r2d2/R$id;->editTextCorporatePurpose:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketEditText;

    const-string v1, "fragmentView.corporateVi\u2026.editTextCorporatePurpose"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/EditText;

    invoke-direct {p0, v0, p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->setPurposeHint(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 499
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez p1, :cond_4

    const-string v0, "fragmentView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    sget v0, Lru/rocketbank/r2d2/R$id;->corporateView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const v0, 0x7f0902cd

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_5

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.EditText"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    check-cast p1, Landroid/widget/EditText;

    const v0, 0x7f110248

    .line 500
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(I)V

    .line 501
    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showIp$1;

    invoke-direct {v0, p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showIp$1;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Landroid/widget/EditText;)V

    check-cast v0, Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private final showKind(Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 681
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->showTitle(Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;)V

    .line 682
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->subscribeInn()V

    const-string v0, "material_assistance"

    .line 684
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "need_card_number"

    .line 685
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    .line 687
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->transferViewModel:Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    invoke-virtual {v1, p3}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->setCard_number_visible(Z)V

    .line 688
    iget-object p3, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez p3, :cond_0

    const-string v1, "fragmentView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    sget v1, Lru/rocketbank/r2d2/R$id;->corporateView:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    const v1, 0x7f0902cd

    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const-string v1, "fragmentView.corporateVi\u2026iew>(R.id.recipient_name)"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 689
    sget-object p3, Lru/rocketbank/r2d2/fragments/transfers/RequisitesObservable;->kindObservable:Landroid/databinding/ObservableField;

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->remittanceKind:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    invoke-virtual {p3, v2}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 690
    iget-object p3, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->remittanceKind:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    sget-object v2, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-virtual {p3}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->ordinal()I

    move-result p3

    aget p3, v2, p3

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 696
    :pswitch_0
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->unknownKind(Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;)V

    goto :goto_0

    .line 695
    :pswitch_1
    invoke-direct {p0, p2}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->showBudget(Ljava/lang/String;)V

    goto :goto_0

    .line 694
    :pswitch_2
    invoke-direct {p0, p2}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->showIp(Ljava/lang/String;)V

    goto :goto_0

    .line 693
    :pswitch_3
    invoke-direct {p0, p2, p4}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->showCorporate(Ljava/lang/String;Z)V

    goto :goto_0

    .line 692
    :pswitch_4
    invoke-direct {p0, p2, v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->showIndividual(Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x0

    const/4 p3, 0x2

    .line 691
    invoke-static {p0, p2, p1, p3, v1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->showIndividual$default(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 698
    :goto_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->subscribeValid()V

    .line 699
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->setDefaultPurpose()V

    .line 700
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->transferViewModel:Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->check()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static bridge synthetic showKind$default(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x1

    .line 680
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->showKind(Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private final showPopup(Landroid/widget/ImageButton;I)V
    .locals 3

    .line 598
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->hidePopup()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 600
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 601
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060200

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 602
    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showPopup$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showPopup$1;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 603
    new-instance v0, Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/PopupWindow;-><init>(II)V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->popup:Landroid/widget/PopupWindow;

    .line 604
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0077

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 605
    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showPopup$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showPopup$2;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)V

    check-cast v1, Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const-string v1, "popupView"

    .line 609
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lru/rocketbank/r2d2/R$id;->textView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v1, p2}, Lru/rocketbank/core/widgets/RocketTextView;->setText(I)V

    .line 610
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->popup:Landroid/widget/PopupWindow;

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 611
    :cond_0
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->popup:Landroid/widget/PopupWindow;

    if-eqz p2, :cond_1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    return-void

    :cond_1
    return-void
.end method

.method private final subscribeInn()V
    .locals 8

    .line 626
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->innValidSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->unsubscribe(Lrx/Subscription;)V

    .line 631
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->remittanceKind:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    sget-object v1, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {v0}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    return-void

    .line 637
    :pswitch_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "fragmentView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    sget v1, Lru/rocketbank/r2d2/R$id;->budgetView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "fragmentView.budgetView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    .line 638
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->budgetViewModel:Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    check-cast v1, Lru/rocketbank/r2d2/fragments/transfers/InnKpp;

    goto :goto_0

    .line 633
    :pswitch_1
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_1

    const-string v1, "fragmentView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    sget v1, Lru/rocketbank/r2d2/R$id;->corporateView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "fragmentView.corporateView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    .line 634
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->corporateViewModel:Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;

    check-cast v1, Lru/rocketbank/r2d2/fragments/transfers/InnKpp;

    :goto_0
    move-object v6, v1

    const v1, 0x7f0901f1

    .line 643
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v1, 0x7f090209

    .line 644
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    const v1, 0x7f0902cd

    .line 645
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    .line 647
    invoke-interface {v6}, Lru/rocketbank/r2d2/fragments/transfers/InnKpp;->getInn()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValidObservable()Lrx/subjects/PublishSubject;

    move-result-object v0

    .line 648
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/subjects/PublishSubject;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 649
    new-instance v7, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$subscribeInn$1;

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$subscribeInn$1;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Lru/rocketbank/r2d2/fragments/transfers/InnKpp;)V

    check-cast v7, Lrx/functions/Action1;

    sget-object v1, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$subscribeInn$2;->INSTANCE:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$subscribeInn$2;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_4

    new-instance v2, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragmentKt$sam$rx_functions_Action1$0;

    invoke-direct {v2, v1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragmentKt$sam$rx_functions_Action1$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    move-object v1, v2

    :cond_4
    check-cast v1, Lrx/functions/Action1;

    invoke-virtual {v0, v7, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->innValidSubscription:Lrx/Subscription;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final subscribeRecipientName()V
    .locals 3

    .line 434
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->remittanceKind:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    sget-object v1, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->individual:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    if-eq v0, v1, :cond_0

    return-void

    .line 437
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->recipientNameSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->unsubscribe(Lrx/Subscription;)V

    .line 438
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_1

    const-string v1, "fragmentView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    sget v1, Lru/rocketbank/r2d2/R$id;->individualView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "fragmentView.individualView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    sget v1, Lru/rocketbank/r2d2/R$id;->editTextIndividualRecipientName:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketEditText;

    .line 439
    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1}, Lcom/jakewharton/rxbinding/widget/RxTextView;->textChangeEvents(Landroid/widget/TextView;)Lrx/Observable;

    move-result-object v1

    const/4 v2, 0x1

    .line 440
    invoke-virtual {v1, v2}, Lrx/Observable;->skip(I)Lrx/Observable;

    move-result-object v1

    .line 441
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    .line 442
    new-instance v2, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$subscribeRecipientName$1;

    invoke-direct {v2, p0, v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$subscribeRecipientName$1;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Lru/rocketbank/core/widgets/RocketEditText;)V

    check-cast v2, Lrx/functions/Action1;

    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->recipientNameSubscription:Lrx/Subscription;

    return-void
.end method

.method private final subscribeValid()V
    .locals 3

    .line 345
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->validSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->unsubscribe(Lrx/Subscription;)V

    .line 346
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->transferViewModel:Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->getFullValidSubject()Lrx/subjects/PublishSubject;

    move-result-object v0

    .line 347
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/subjects/PublishSubject;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 348
    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$subscribeValid$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$subscribeValid$1;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)V

    check-cast v1, Lrx/functions/Action1;

    new-instance v2, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$subscribeValid$2;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$subscribeValid$2;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)V

    check-cast v2, Lrx/functions/Action1;

    invoke-virtual {v0, v1, v2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->validSubscription:Lrx/Subscription;

    return-void
.end method

.method private final unknownKind(Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;)V
    .locals 2

    .line 715
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->getView()Landroid/view/View;

    move-result-object v0

    const-string v1, "Unknown kind "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/helpers/UIHelper;->showSnack(Landroid/view/View;Ljava/lang/String;)V

    .line 716
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->hideFields()V

    return-void
.end method

.method private final updateStatusList(Landroid/view/View;)V
    .locals 10

    .line 562
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->statusesList:[Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;

    .line 563
    sget v1, Lru/rocketbank/r2d2/R$id;->spinnerStatus:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    const-string v2, "view.spinnerStatus"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lru/rocketbank/r2d2/fragments/transfers/MultilineArrayAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "view.context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3, v0}, Lru/rocketbank/r2d2/fragments/transfers/MultilineArrayAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    check-cast v2, Landroid/widget/SpinnerAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 564
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->budgetViewModel:Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getSelectedStatus()Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;

    move-result-object v1

    const-string v2, "$receiver"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12378
    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt___ArraysKt;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_5

    .line 565
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->budgetViewModel:Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    array-length v3, v0

    move v4, v2

    :goto_1
    const/4 v5, 0x0

    if-ge v4, v3, :cond_3

    aget-object v6, v0, v4

    .line 566
    iget-object v7, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->transferViewModel:Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    invoke-virtual {v7}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->getCorr_number()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v7

    invoke-virtual {v7}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getCleanValue()Ljava/lang/String;

    move-result-object v7

    const-string v8, "40101"

    const/4 v9, 0x2

    invoke-static {v7, v8, v2, v9, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 567
    invoke-virtual {v6}, Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;->getCode()Ljava/lang/String;

    move-result-object v5

    const-string v7, "24"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    goto :goto_2

    .line 569
    :cond_1
    invoke-virtual {v6}, Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;->getCode()Ljava/lang/String;

    move-result-object v5

    const-string v7, "13"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    :goto_2
    if-eqz v5, :cond_2

    move-object v5, v6

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    if-nez v5, :cond_4

    .line 571
    aget-object v5, v0, v2

    :cond_4
    invoke-virtual {v1, v5}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->setSelectedStatus(Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;)V

    .line 573
    :cond_5
    sget v1, Lru/rocketbank/r2d2/R$id;->spinnerStatus:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->budgetViewModel:Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getSelectedStatus()Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt___ArraysKt;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final getFragmentView()Landroid/view/View;
    .locals 2

    .line 118
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "fragmentView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final onBackPressed()Z
    .locals 1

    .line 881
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->popup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 882
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->hidePopup()V

    const/4 v0, 0x1

    return v0

    .line 885
    :cond_0
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 134
    invoke-static {p1, p2, v0}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;

    move-result-object p1

    const-string p2, "binding"

    .line 135
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->getRoot()Landroid/view/View;

    move-result-object p2

    const-string v1, "binding.root"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    .line 136
    new-instance p2, Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Ljp/wasabeef/glide/transformations/CropCircleTransformation;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    .line 138
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p2

    invoke-interface {p2}, Lru/rocketbank/core/dagger/component/RocketComponent;->getRocketApi()Lru/rocketbank/core/network/api/RocketAPI;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

    .line 139
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p2

    invoke-interface {p2}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    .line 141
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez p2, :cond_0

    const-string v1, "fragmentView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    sget v1, Lru/rocketbank/r2d2/R$id;->budgetView:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    const-string v1, "fragmentView.budgetView"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    invoke-direct {p0, p2}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->updateStatusList(Landroid/view/View;)V

    .line 143
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez p2, :cond_1

    const-string v1, "fragmentView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    sget v1, Lru/rocketbank/r2d2/R$id;->corr_number:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/widgets/RocketEditText;

    sget-object v1, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->corr_number:Lru/rocketbank/r2d2/fragments/transfers/TransferField;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/transfers/TransferField;->getPattern()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lru/rocketbank/r2d2/utils/PatternFormatter;->setup(Lru/rocketbank/core/widgets/RocketEditText;Ljava/lang/String;)V

    .line 144
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez p2, :cond_2

    const-string v1, "fragmentView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    sget v1, Lru/rocketbank/r2d2/R$id;->editTextCardNumber:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/widgets/RocketEditText;

    const-string v1, "dddd dddd dddd dddd ddd"

    invoke-static {p2, v1}, Lru/rocketbank/r2d2/utils/PatternFormatter;->setup(Lru/rocketbank/core/widgets/RocketEditText;Ljava/lang/String;)V

    .line 145
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->budgetViewModel:Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->setBudget(Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;)V

    .line 146
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->individualViewModel:Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->setIndividual(Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;)V

    .line 147
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->corporateViewModel:Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->setCorporate(Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;)V

    .line 148
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->transferViewModel:Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;->setTransfer(Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;)V

    .line 150
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez p1, :cond_3

    const-string p2, "fragmentView"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    sget p2, Lru/rocketbank/r2d2/R$id;->budgetView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string p2, "fragmentView.budgetView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    sget p2, Lru/rocketbank/r2d2/R$id;->tax_switch:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/CardView;

    const-string p2, "fragmentView.budgetView.tax_switch"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->taxSwitchView:Landroid/support/v7/widget/CardView;

    .line 151
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez p1, :cond_4

    const-string p2, "fragmentView"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    sget p2, Lru/rocketbank/r2d2/R$id;->budgetView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string p2, "fragmentView.budgetView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    sget p2, Lru/rocketbank/r2d2/R$id;->spinnerStatus:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    const-string p2, "fragmentView.budgetView.spinnerStatus"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->spinnerStatus:Landroid/widget/Spinner;

    .line 152
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->spinnerStatus:Landroid/widget/Spinner;

    if-nez p1, :cond_5

    const-string p2, "spinnerStatus"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setEnabled(Z)V

    if-eqz p3, :cond_12

    const-string p1, "KEY_TRANSFER_MAP"

    .line 155
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "savedInstanceState.getBundle(KEY_TRANSFER_MAP)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lru/rocketbank/core/utils/CollectionUtilsKt;->fromBundle(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 156
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->transferViewModel:Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->getFields()Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    if-eqz v1, :cond_6

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string p1, "KEY_KIND"

    .line 157
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    if-nez p1, :cond_8

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.model.transfers.bank.RemittanceKindResponseData.Kind"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    check-cast p1, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->remittanceKind:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    const-string p1, "KEY_MESSAGE"

    .line 158
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->message:Ljava/lang/String;

    const-string p1, "KEY_EXTRA"

    .line 159
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->extra:Ljava/lang/String;

    const-string p1, "KEY_GKH"

    .line 160
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->isGkh:Z

    .line 161
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->remittanceKind:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->message:Ljava/lang/String;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->extra:Ljava/lang/String;

    iget-boolean v2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->isGkh:Z

    invoke-direct {p0, p1, p2, v1, v2}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->showKind(Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 162
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->loadBikLogo()V

    const-string p1, "KEY_ANDANCED_MAP"

    .line 163
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "KEY_ANDANCED_MAP"

    .line 164
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "savedInstanceState.getBundle(KEY_ANDANCED_MAP)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lru/rocketbank/core/utils/CollectionUtilsKt;->fromBundle(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 165
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->transferViewModel:Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->getAdditionalViewModel()Lru/rocketbank/r2d2/utils/ViewModelObservable;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lru/rocketbank/r2d2/utils/ViewModelObservable;->getFields()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    if-eqz v1, :cond_9

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->setValue(Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    const-string p1, "KEY_PERIOD"

    .line 168
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "KEY_PERIOD"

    .line 169
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "savedInstanceState.getString(KEY_PERIOD)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 p1, 0x1

    new-array v2, p1, [Ljava/lang/String;

    const-string p2, "|"

    aput-object p2, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 170
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->budgetViewModel:Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    sget-object v2, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;->Companion:Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Companion;

    invoke-virtual {v2, p1, v1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Companion;->create(Ljava/lang/String;Ljava/lang/String;)Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;

    move-result-object p1

    invoke-virtual {p2, p1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->setTax_period_date(Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;)V

    .line 172
    :cond_b
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->basisList:[Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;

    array-length p2, p1

    move v1, v0

    :goto_2
    const/4 v2, 0x0

    if-ge v1, p2, :cond_d

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;->getCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "KEY_BASIS"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_3

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_d
    move-object v3, v2

    :goto_3
    if-eqz v3, :cond_e

    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->budgetViewModel:Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    invoke-virtual {p1, v3}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->setSelectedTaxBasis(Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;)V

    .line 173
    :cond_e
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->statusesList:[Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;

    array-length p2, p1

    :goto_4
    if-ge v0, p2, :cond_10

    aget-object v1, p1, v0

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;->getCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KEY_STATUS"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_10
    move-object v1, v2

    :goto_5
    if-eqz v1, :cond_11

    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->budgetViewModel:Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    invoke-virtual {p1, v1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->setSelectedStatus(Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;)V

    .line 175
    :cond_11
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->transferViewModel:Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->check()V

    .line 177
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->subscribeRecipientName()V

    goto :goto_6

    .line 179
    :cond_12
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->budgetViewModel:Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getUin()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object p1

    const-string p2, "0"

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->setValue(Ljava/lang/String;)V

    .line 181
    :goto_6
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez p1, :cond_13

    const-string p2, "fragmentView"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_13
    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onDestroyView()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onNextButtonClick()V
    .locals 3

    .line 586
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->transferViewModel:Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->isFullValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->remittanceKind:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    sget-object v1, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 591
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    return-void

    .line 590
    :pswitch_1
    sget-object v0, Lru/rocketbank/core/model/transfers/bank/RecipientType;->BUDGET:Lru/rocketbank/core/model/transfers/bank/RecipientType;

    goto :goto_0

    .line 589
    :pswitch_2
    sget-object v0, Lru/rocketbank/core/model/transfers/bank/RecipientType;->BUSINESS:Lru/rocketbank/core/model/transfers/bank/RecipientType;

    goto :goto_0

    .line 588
    :pswitch_3
    sget-object v0, Lru/rocketbank/core/model/transfers/bank/RecipientType;->PERSON:Lru/rocketbank/core/model/transfers/bank/RecipientType;

    .line 593
    :goto_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->transferViewModel:Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->remittanceKind:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    iget-boolean v2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->isGkh:Z

    invoke-virtual {v0, v1, v2}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->toRemittanceOutgoing(Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;Z)Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    move-result-object v0

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/fragments/transfers/BankAmountActivity;->startActivity(Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;Landroid/content/Context;)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onPause()V
    .locals 1

    .line 857
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->validSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->unsubscribe(Lrx/Subscription;)V

    .line 858
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->bikValidSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->unsubscribe(Lrx/Subscription;)V

    .line 859
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->innValidSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->unsubscribe(Lrx/Subscription;)V

    .line 860
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->getInnSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->unsubscribe(Lrx/Subscription;)V

    .line 861
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->getBikSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->unsubscribe(Lrx/Subscription;)V

    .line 862
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->userSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->unsubscribe(Lrx/Subscription;)V

    .line 863
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->hidePopup()V

    .line 864
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 4

    .line 317
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onResume()V

    .line 318
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/support/v4/app/Fragment;

    :cond_0
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->updateNextButton(Landroid/support/v4/app/Fragment;)V

    .line 319
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->budgetViewModel:Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getFrom()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 320
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    if-nez v0, :cond_1

    const-string v1, "authorization"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->getUser()Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onResume$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onResume$1;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)V

    check-cast v1, Lrx/functions/Action1;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->userSubscription:Lrx/Subscription;

    .line 324
    :cond_2
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->subscribeValid()V

    .line 325
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->transferViewModel:Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->getBik()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValidObservable()Lrx/subjects/PublishSubject;

    move-result-object v0

    .line 326
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/subjects/PublishSubject;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 327
    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onResume$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onResume$2;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)V

    check-cast v1, Lrx/functions/Action1;

    sget-object v2, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onResume$3;->INSTANCE:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onResume$3;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_3

    new-instance v3, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragmentKt$sam$rx_functions_Action1$0;

    invoke-direct {v3, v2}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragmentKt$sam$rx_functions_Action1$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    move-object v2, v3

    :cond_3
    check-cast v2, Lrx/functions/Action1;

    invoke-virtual {v0, v1, v2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->bikValidSubscription:Lrx/Subscription;

    .line 328
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->transferViewModel:Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->getCorrNumberChange()Lrx/subjects/PublishSubject;

    move-result-object v0

    .line 329
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/subjects/PublishSubject;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 330
    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onResume$4;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onResume$4;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)V

    check-cast v1, Lrx/functions/Action1;

    sget-object v2, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onResume$5;->INSTANCE:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onResume$5;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_4

    new-instance v3, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragmentKt$sam$rx_functions_Action1$0;

    invoke-direct {v3, v2}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragmentKt$sam$rx_functions_Action1$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    move-object v2, v3

    :cond_4
    check-cast v2, Lrx/functions/Action1;

    invoke-virtual {v0, v1, v2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->corrNumberSubscription:Lrx/Subscription;

    .line 332
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->transferViewModel:Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->getCorr_number()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValidObservable()Lrx/subjects/PublishSubject;

    move-result-object v0

    check-cast v0, Lrx/Observable;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->transferViewModel:Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->getBik()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValidObservable()Lrx/subjects/PublishSubject;

    move-result-object v1

    check-cast v1, Lrx/Observable;

    invoke-static {v0, v1}, Lrx/Observable;->merge(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    .line 333
    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onResume$6;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onResume$6;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)V

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 334
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 335
    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onResume$7;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onResume$7;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)V

    check-cast v1, Lrx/functions/Action1;

    sget-object v2, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onResume$8;->INSTANCE:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onResume$8;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_5

    new-instance v3, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragmentKt$sam$rx_functions_Action1$0;

    invoke-direct {v3, v2}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragmentKt$sam$rx_functions_Action1$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    move-object v2, v3

    :cond_5
    check-cast v2, Lrx/functions/Action1;

    invoke-virtual {v0, v1, v2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    .line 337
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->subscribeInn()V

    .line 339
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->transferViewModel:Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->check()V

    .line 340
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->individualViewModel:Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;->check()V

    .line 341
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->budgetViewModel:Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->check()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 868
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "KEY_TRANSFER_MAP"

    .line 869
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->transferViewModel:Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->getFields()Ljava/util/HashMap;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1306
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 1307
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 869
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-virtual {v3}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 14037
    new-instance v5, Lkotlin/Pair;

    invoke-direct {v5, v4, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 869
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1309
    :cond_0
    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .line 869
    invoke-static {v2}, Lkotlin/collections/AbstractList$Companion;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lru/rocketbank/core/utils/CollectionUtilsKt;->toBundle(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 870
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->transferViewModel:Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->getAdditionalViewModel()Lru/rocketbank/r2d2/utils/ViewModelObservable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lru/rocketbank/r2d2/utils/ViewModelObservable;->getFields()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/util/Map;

    .line 1310
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 1311
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 870
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 15037
    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 870
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1313
    :cond_1
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 870
    invoke-static {v1}, Lkotlin/collections/AbstractList$Companion;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "KEY_ANDANCED_MAP"

    invoke-static {v0}, Lru/rocketbank/core/utils/CollectionUtilsKt;->toBundle(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_2
    const-string v0, "KEY_KIND"

    .line 871
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->remittanceKind:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "KEY_MESSAGE"

    .line 872
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->message:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KEY_EXTRA"

    .line 873
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->extra:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KEY_GKH"

    .line 874
    iget-boolean v1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->isGkh:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "KEY_BASIS"

    .line 875
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->budgetViewModel:Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getSelectedTaxBasis()Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KEY_STATUS"

    .line 876
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->budgetViewModel:Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getSelectedStatus()Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->budgetViewModel:Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getTax_period_date()Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "KEY_PERIOD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;->kind()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x7c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    return-void
.end method

.method public final onUserModel(Lru/rocketbank/core/model/UserModel;)V
    .locals 1

    const-string v0, "userModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onUserModel(Lru/rocketbank/core/model/UserModel;)V

    .line 414
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fillUserDetails(Lru/rocketbank/core/model/UserModel;)V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez p2, :cond_0

    const-string v0, "fragmentView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    sget v0, Lru/rocketbank/r2d2/R$id;->budgetView:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    const-string v0, "fragmentView.budgetView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    sget v0, Lru/rocketbank/r2d2/R$id;->uin:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/widgets/RocketEditText;

    .line 188
    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$1;

    invoke-direct {v0, p0, p2}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$1;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Lru/rocketbank/core/widgets/RocketEditText;)V

    check-cast v0, Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p2, v0}, Lru/rocketbank/core/widgets/RocketEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const p2, 0x7f090206

    .line 199
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.EditText"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p1, Landroid/widget/EditText;

    .line 200
    new-instance p2, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$2;

    invoke-direct {p2, p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$2;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Landroid/widget/EditText;)V

    check-cast p2, Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 232
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez p1, :cond_2

    const-string p2, "fragmentView"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    sget p2, Lru/rocketbank/r2d2/R$id;->budgetView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string p2, "fragmentView.budgetView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    sget p2, Lru/rocketbank/r2d2/R$id;->oktmo:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketEditText;

    .line 233
    new-instance p2, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$3;

    invoke-direct {p2, p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$3;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Lru/rocketbank/core/widgets/RocketEditText;)V

    check-cast p2, Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 246
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez p1, :cond_3

    const-string p2, "fragmentView"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    sget p2, Lru/rocketbank/r2d2/R$id;->individualView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string p2, "fragmentView.individualView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    sget p2, Lru/rocketbank/r2d2/R$id;->editTextIndividualRecipientName:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketEditText;

    .line 250
    new-instance p2, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$4;

    invoke-direct {p2, p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$onViewCreated$4;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;Lru/rocketbank/core/widgets/RocketEditText;)V

    check-cast p2, Landroid/text/TextWatcher;

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 258
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez p1, :cond_4

    const-string p2, "fragmentView"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    sget p2, Lru/rocketbank/r2d2/R$id;->budgetView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string p2, "fragmentView.budgetView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    sget p2, Lru/rocketbank/r2d2/R$id;->edittext_transfers_bank_purpose:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketEditText;

    const-string p2, "fragmentView.budgetView.\u2026xt_transfers_bank_purpose"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/EditText;

    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->checkPurposeIsNotEmpty(Landroid/widget/EditText;)V

    .line 259
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez p1, :cond_5

    const-string p2, "fragmentView"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    sget p2, Lru/rocketbank/r2d2/R$id;->individualView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string p2, "fragmentView.individualView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    sget p2, Lru/rocketbank/r2d2/R$id;->editTextIndividualPurpose:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketEditText;

    const-string p2, "fragmentView.individualV\u2026editTextIndividualPurpose"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/EditText;

    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->checkPurposeIsNotEmpty(Landroid/widget/EditText;)V

    .line 260
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez p1, :cond_6

    const-string p2, "fragmentView"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    sget p2, Lru/rocketbank/r2d2/R$id;->corporateView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string p2, "fragmentView.corporateView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    sget p2, Lru/rocketbank/r2d2/R$id;->editTextCorporatePurpose:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketEditText;

    const-string p2, "fragmentView.corporateVi\u2026.editTextCorporatePurpose"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/EditText;

    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->checkPurposeIsNotEmpty(Landroid/widget/EditText;)V

    return-void
.end method

.method public final setFragmentView(Landroid/view/View;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    return-void
.end method

.method public final showTitle(Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;)V
    .locals 3

    const-string v0, "remittanceKind"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    invoke-virtual {p1}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->getTitle()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_6

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 356
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "fragmentView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    sget v1, Lru/rocketbank/r2d2/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/View;

    const-string v2, "$receiver"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2006
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 357
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_2

    const-string v2, "fragmentView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    sget v2, Lru/rocketbank/r2d2/R$id;->subTitle:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    if-eqz v0, :cond_3

    check-cast v0, Landroid/view/View;

    const-string v2, "$receiver"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3006
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 358
    :cond_3
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_4

    const-string v1, "fragmentView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    sget v1, Lru/rocketbank/r2d2/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(I)V

    return-void

    :cond_5
    return-void

    :cond_6
    return-void
.end method

.method public final updateNextButton(Landroid/support/v4/app/Fragment;)V
    .locals 6

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 578
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 582
    :cond_0
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lru/rocketbank/core/events/NextButtonEvent;

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->transferViewModel:Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->isFullValid()Z

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f110314

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p1, v2, v3, v4}, Lru/rocketbank/core/events/NextButtonEvent;-><init>(Landroid/support/v4/app/Fragment;ZLjava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
