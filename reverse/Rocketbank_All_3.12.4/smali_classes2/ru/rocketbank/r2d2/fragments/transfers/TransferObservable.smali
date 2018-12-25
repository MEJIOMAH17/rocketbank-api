.class public final Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;
.super Lru/rocketbank/r2d2/utils/ViewModelObservable;
.source "TransferBankFragment.kt"

# interfaces
.implements Lru/rocketbank/r2d2/fragments/transfers/ToMap;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransferBankFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransferBankFragment.kt\nru/rocketbank/r2d2/fragments/transfers/TransferObservable\n*L\n1#1,1301:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private additionalViewModel:Lru/rocketbank/r2d2/utils/ViewModelObservable;

.field private final bank_name$delegate:Ljava/util/HashMap;

.field private final bik$delegate:Ljava/util/HashMap;

.field private final card_number$delegate:Ljava/util/HashMap;

.field private card_number_visible:Z

.field private final corrNumberChange:Lrx/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/PublishSubject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final corr_bank$delegate:Ljava/util/HashMap;

.field private final corr_number$delegate:Ljava/util/HashMap;

.field private final fullValidSubject:Lrx/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private fullValidSubscription:Lrx/Subscription;

.field private final logo$delegate:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x6

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "bik"

    const-string v4, "getBik()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "corr_bank"

    const-string v4, "getCorr_bank()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "bank_name"

    const-string v4, "getBank_name()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "corr_number"

    const-string v4, "getCorr_number()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "card_number"

    const-string v4, "getCard_number()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "logo"

    const-string v4, "getLogo()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 892
    invoke-direct {p0}, Lru/rocketbank/r2d2/utils/ViewModelObservable;-><init>()V

    .line 894
    invoke-static {}, Lrx/subjects/PublishSubject;->create()Lrx/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "PublishSubject.create<Boolean>()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->fullValidSubject:Lrx/subjects/PublishSubject;

    .line 914
    invoke-static {}, Lrx/subjects/PublishSubject;->create()Lrx/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "PublishSubject.create()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->corrNumberChange:Lrx/subjects/PublishSubject;

    const-string v1, "bik"

    .line 918
    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable$1;->INSTANCE:Lru/rocketbank/r2d2/fragments/transfers/TransferObservable$1;

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lru/rocketbank/r2d2/utils/ViewModelObservable;->putField$default(Lru/rocketbank/r2d2/utils/ViewModelObservable;Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    const-string v1, "corr_bank"

    .line 919
    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable$2;->INSTANCE:Lru/rocketbank/r2d2/fragments/transfers/TransferObservable$2;

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/16 v2, 0x15

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lru/rocketbank/r2d2/utils/ViewModelObservable;->putField$default(Lru/rocketbank/r2d2/utils/ViewModelObservable;Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    const-string v1, "bank_name"

    .line 920
    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable$3;->INSTANCE:Lru/rocketbank/r2d2/fragments/transfers/TransferObservable$3;

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function1;

    const/16 v2, 0x8

    const/4 v4, 0x0

    const/16 v5, 0x8

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lru/rocketbank/r2d2/utils/ViewModelObservable;->putField$default(Lru/rocketbank/r2d2/utils/ViewModelObservable;Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    const-string v1, "corr_number"

    .line 921
    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable$4;->INSTANCE:Lru/rocketbank/r2d2/fragments/transfers/TransferObservable$4;

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/16 v2, 0x16

    const/4 v3, 0x0

    const/4 v5, 0x4

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lru/rocketbank/r2d2/utils/ViewModelObservable;->putField$default(Lru/rocketbank/r2d2/utils/ViewModelObservable;Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    const-string v1, "card_number"

    .line 922
    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable$5;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable$5;-><init>(Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/16 v2, 0xc

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lru/rocketbank/r2d2/utils/ViewModelObservable;->putField$default(Lru/rocketbank/r2d2/utils/ViewModelObservable;Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    const-string v0, "logo"

    .line 923
    sget-object v1, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable$6;->INSTANCE:Lru/rocketbank/r2d2/fragments/transfers/TransferObservable$6;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    sget-object v2, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable$7;->INSTANCE:Lru/rocketbank/r2d2/fragments/transfers/TransferObservable$7;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/16 v3, 0x8

    invoke-virtual {p0, v0, v3, v2, v1}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->putField(Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    .line 939
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->getFields()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->bik$delegate:Ljava/util/HashMap;

    .line 940
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->getFields()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->corr_bank$delegate:Ljava/util/HashMap;

    .line 941
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->getFields()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->bank_name$delegate:Ljava/util/HashMap;

    .line 942
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->getFields()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->corr_number$delegate:Ljava/util/HashMap;

    .line 943
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->getFields()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->card_number$delegate:Ljava/util/HashMap;

    .line 944
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->getFields()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->logo$delegate:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final check()V
    .locals 1

    .line 954
    invoke-super {p0}, Lru/rocketbank/r2d2/utils/ViewModelObservable;->check()V

    .line 955
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->additionalViewModel:Lru/rocketbank/r2d2/utils/ViewModelObservable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/utils/ViewModelObservable;->check()V

    return-void

    :cond_0
    return-void
.end method

.method public final getAdditionalViewModel()Lru/rocketbank/r2d2/utils/ViewModelObservable;
    .locals 1

    .line 897
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->additionalViewModel:Lru/rocketbank/r2d2/utils/ViewModelObservable;

    return-object v0
.end method

.method public final getBank_name()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;
    .locals 3
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->bank_name$delegate:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/AbstractList$Companion;->getOrImplicitDefaultNullable(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    return-object v0
.end method

.method public final getBik()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;
    .locals 3
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->bik$delegate:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/AbstractList$Companion;->getOrImplicitDefaultNullable(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    return-object v0
.end method

.method public final getCard_number()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;
    .locals 3
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->card_number$delegate:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/AbstractList$Companion;->getOrImplicitDefaultNullable(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    return-object v0
.end method

.method public final getCard_number_visible()Z
    .locals 1
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .line 946
    iget-boolean v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->card_number_visible:Z

    return v0
.end method

.method public final getCorrNumberChange()Lrx/subjects/PublishSubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/subjects/PublishSubject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 914
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->corrNumberChange:Lrx/subjects/PublishSubject;

    return-object v0
.end method

.method public final getCorr_bank()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;
    .locals 3
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->corr_bank$delegate:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/AbstractList$Companion;->getOrImplicitDefaultNullable(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    return-object v0
.end method

.method public final getCorr_number()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;
    .locals 3
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->corr_number$delegate:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/AbstractList$Companion;->getOrImplicitDefaultNullable(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    return-object v0
.end method

.method public final getFullValidSubject()Lrx/subjects/PublishSubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 894
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->fullValidSubject:Lrx/subjects/PublishSubject;

    return-object v0
.end method

.method public final getLogo()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;
    .locals 3

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->logo$delegate:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/AbstractList$Companion;->getOrImplicitDefaultNullable(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    return-object v0
.end method

.method public final isFullValid()Z
    .locals 2

    .line 912
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->additionalViewModel:Lru/rocketbank/r2d2/utils/ViewModelObservable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/utils/ViewModelObservable;->isValid()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final notifyPropertyChanged(I)V
    .locals 1

    .line 959
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/utils/ViewModelObservable;->notifyPropertyChanged(I)V

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 961
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->corrNumberChange:Lrx/subjects/PublishSubject;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->getCorr_number()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void

    :cond_1
    const/16 p1, 0xc

    .line 962
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/utils/ViewModelObservable;->notifyPropertyChanged(I)V

    :goto_0
    return-void
.end method

.method public final setAdditionalViewModel(Lru/rocketbank/r2d2/utils/ViewModelObservable;)V
    .locals 2

    .line 899
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->additionalViewModel:Lru/rocketbank/r2d2/utils/ViewModelObservable;

    .line 901
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->fullValidSubscription:Lrx/Subscription;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    :cond_1
    if-eqz p1, :cond_2

    .line 903
    invoke-virtual {p1}, Lru/rocketbank/r2d2/utils/ViewModelObservable;->getValidObservable()Lrx/Observable;

    move-result-object p1

    if-nez p1, :cond_3

    :cond_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object p1

    .line 905
    :cond_3
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->getValidObservable()Lrx/Observable;

    move-result-object v0

    sget-object v1, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable$additionalViewModel$2;->INSTANCE:Lru/rocketbank/r2d2/fragments/transfers/TransferObservable$additionalViewModel$2;

    check-cast v1, Lrx/functions/Func2;

    invoke-static {v0, p1, v1}, Lrx/Observable;->combineLatest(Lrx/Observable;Lrx/Observable;Lrx/functions/Func2;)Lrx/Observable;

    move-result-object p1

    .line 906
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->fullValidSubject:Lrx/subjects/PublishSubject;

    check-cast v0, Lrx/Observer;

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribe(Lrx/Observer;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->fullValidSubscription:Lrx/Subscription;

    .line 908
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->check()V

    return-void
.end method

.method public final setCard_number_visible(Z)V
    .locals 0

    .line 949
    iput-boolean p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->card_number_visible:Z

    const/16 p1, 0xd

    .line 950
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->notifyPropertyChanged(I)V

    return-void
.end method

.method public final setLogo(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;)V
    .locals 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->logo$delegate:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final toMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 892
    invoke-static {p0}, Lru/rocketbank/r2d2/fragments/transfers/ToMap$DefaultImpls;->toMap(Lru/rocketbank/r2d2/fragments/transfers/ToMap;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final toRemittanceOutgoing(Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;Z)Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;
    .locals 5

    const-string v0, "remittanceKind"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 926
    new-instance v0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;-><init>(Ljava/util/Map;ILkotlin/jvm/internal/Ref;)V

    .line 927
    invoke-virtual {p1}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->setRemittance_kind(Ljava/lang/String;)V

    .line 928
    invoke-virtual {v0, p2}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->setGkh(Z)V

    .line 930
    invoke-virtual {v0}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->getMap()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->toMap()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 931
    invoke-virtual {v0}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->getMap()Ljava/util/Map;

    move-result-object p1

    const-string p2, "logo"

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    invoke-virtual {v0}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->getMap()Ljava/util/Map;

    move-result-object p1

    const-string p2, "card_number"

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    iget-boolean p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->card_number_visible:Z

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->getMap()Ljava/util/Map;

    move-result-object p1

    const-string p2, "purpose"

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 934
    invoke-virtual {v0}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->getMap()Ljava/util/Map;

    move-result-object p1

    const-string p2, "purpose"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->getMap()Ljava/util/Map;

    move-result-object v3

    const-string v4, "purpose"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \u043d\u043e\u043c\u0435\u0440 \u043a\u0430\u0440\u0442\u044b \u043f\u043e\u043b\u0443\u0447\u0430\u0442\u0435\u043b\u044f: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->getCard_number()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v3

    invoke-virtual {v3}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getCleanValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferObservable;->additionalViewModel:Lru/rocketbank/r2d2/utils/ViewModelObservable;

    instance-of p2, p1, Lru/rocketbank/r2d2/fragments/transfers/ToMap;

    if-nez p2, :cond_1

    move-object p1, v1

    :cond_1
    check-cast p1, Lru/rocketbank/r2d2/fragments/transfers/ToMap;

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->getMap()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1}, Lru/rocketbank/r2d2/fragments/transfers/ToMap;->toMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_2
    return-object v0
.end method
