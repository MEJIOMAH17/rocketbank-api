.class public Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;
.super Ljava/lang/Object;
.source "RemittanceOutgoing.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRemittanceOutgoing.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemittanceOutgoing.kt\nru/rocketbank/core/model/transfers/bank/RemittanceOutgoing\n*L\n1#1,100:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing$Companion;


# instance fields
.field private final amount$delegate:Ljava/util/Map;

.field private final bank_name$delegate:Ljava/util/Map;

.field private transient besp:Ljava/lang/Boolean;

.field private final bik$delegate:Ljava/util/Map;

.field private transient cardAccount:Ljava/lang/String;

.field private final corr_bank$delegate:Ljava/util/Map;

.field private final corr_number$delegate:Ljava/util/Map;

.field private final inn$delegate:Ljava/util/Map;

.field private isGkh:Z

.field private transient isVat:Ljava/lang/Boolean;

.field private final kpp$delegate:Ljava/util/Map;

.field private final logo$delegate:Ljava/util/Map;

.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final purpose$delegate:Ljava/util/Map;

.field private final recipient_name$delegate:Ljava/util/Map;

.field private transient remittance_kind:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xa

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "logo"

    const-string v4, "getLogo()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "bik"

    const-string v4, "getBik()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "amount"

    const-string v4, "getAmount()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "corr_number"

    const-string v4, "getCorr_number()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "corr_bank"

    const-string v4, "getCorr_bank()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "purpose"

    const-string v4, "getPurpose()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "recipient_name"

    const-string v4, "getRecipient_name()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "bank_name"

    const-string v4, "getBank_name()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "kpp"

    const-string v4, "getKpp()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "inn"

    const-string v4, "getInn()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->Companion:Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing$Companion;

    .line 79
    new-instance v0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing$Companion$CREATOR$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;-><init>(Ljava/util/Map;ILkotlin/jvm/internal/Ref;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->map:Ljava/util/Map;

    .line 20
    iget-object p1, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->map:Ljava/util/Map;

    iput-object p1, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->logo$delegate:Ljava/util/Map;

    .line 21
    iget-object p1, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->map:Ljava/util/Map;

    iput-object p1, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->bik$delegate:Ljava/util/Map;

    .line 22
    iget-object p1, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->map:Ljava/util/Map;

    iput-object p1, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->amount$delegate:Ljava/util/Map;

    .line 23
    iget-object p1, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->map:Ljava/util/Map;

    iput-object p1, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->corr_number$delegate:Ljava/util/Map;

    .line 24
    iget-object p1, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->map:Ljava/util/Map;

    iput-object p1, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->corr_bank$delegate:Ljava/util/Map;

    .line 25
    iget-object p1, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->map:Ljava/util/Map;

    iput-object p1, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->purpose$delegate:Ljava/util/Map;

    .line 26
    iget-object p1, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->map:Ljava/util/Map;

    iput-object p1, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->recipient_name$delegate:Ljava/util/Map;

    .line 27
    iget-object p1, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->map:Ljava/util/Map;

    iput-object p1, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->bank_name$delegate:Ljava/util/Map;

    .line 28
    iget-object p1, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->map:Ljava/util/Map;

    iput-object p1, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->kpp$delegate:Ljava/util/Map;

    .line 29
    iget-object p1, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->map:Ljava/util/Map;

    iput-object p1, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->inn$delegate:Ljava/util/Map;

    .line 40
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->isVat:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;ILkotlin/jvm/internal/Ref;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 12
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    sget-object p2, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing$1;->INSTANCE:Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing$1;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, p2}, Lkotlin/collections/AbstractList$Companion;->withDefaultMutable(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;)V
    .locals 2

    const-string v0, "remittance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 54
    invoke-direct {p0, v0, v1, v0}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;-><init>(Ljava/util/Map;ILkotlin/jvm/internal/Ref;)V

    .line 55
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->getBik()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->setBik(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->getIcon_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->setLogo(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->getCorr_bank()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->setCorr_bank(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->getCorr_number()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->setCorr_number(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->getPurpose()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->setPurpose(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->getRecipient_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->setRecipient_name(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->getBank_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->setBank_name(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->getKpp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->setKpp(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->getInn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->setInn(Ljava/lang/String;)V

    const-string v0, "true"

    .line 64
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->getNds()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->setVat(Ljava/lang/Boolean;)V

    .line 65
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->isGkh()Z

    move-result p1

    iput-boolean p1, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->isGkh:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getAmount()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->amount$delegate:Ljava/util/Map;

    sget-object v1, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/AbstractList$Companion;->getOrImplicitDefaultNullable(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getBank_name()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->bank_name$delegate:Ljava/util/Map;

    sget-object v1, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/AbstractList$Companion;->getOrImplicitDefaultNullable(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getBesp()Ljava/lang/Boolean;
    .locals 1

    .line 47
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->besp:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getBik()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->bik$delegate:Ljava/util/Map;

    sget-object v1, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/AbstractList$Companion;->getOrImplicitDefaultNullable(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getCardAccount()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->cardAccount:Ljava/lang/String;

    return-object v0
.end method

.method public final getCorr_bank()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->corr_bank$delegate:Ljava/util/Map;

    sget-object v1, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/AbstractList$Companion;->getOrImplicitDefaultNullable(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getCorr_number()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->corr_number$delegate:Ljava/util/Map;

    sget-object v1, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/AbstractList$Companion;->getOrImplicitDefaultNullable(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getInn()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->inn$delegate:Ljava/util/Map;

    sget-object v1, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/AbstractList$Companion;->getOrImplicitDefaultNullable(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getKpp()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->kpp$delegate:Ljava/util/Map;

    sget-object v1, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/AbstractList$Companion;->getOrImplicitDefaultNullable(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getLogo()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->logo$delegate:Ljava/util/Map;

    sget-object v1, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/AbstractList$Companion;->getOrImplicitDefaultNullable(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getMap()Ljava/util/Map;
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

    .line 12
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->map:Ljava/util/Map;

    return-object v0
.end method

.method public final getPurpose()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->purpose$delegate:Ljava/util/Map;

    sget-object v1, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/AbstractList$Companion;->getOrImplicitDefaultNullable(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getRecipient_name()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->recipient_name$delegate:Ljava/util/Map;

    sget-object v1, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/AbstractList$Companion;->getOrImplicitDefaultNullable(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getRemittance_kind()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->remittance_kind:Ljava/lang/String;

    return-object v0
.end method

.method public final isGkh()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->isGkh:Z

    return v0
.end method

.method public final isVat()Ljava/lang/Boolean;
    .locals 1

    .line 40
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->isVat:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final put(Lru/rocketbank/core/model/transfers/Template$ProviderPayment$FieldPayment;)V
    .locals 3

    const-string v0, "field"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->map:Ljava/util/Map;

    invoke-virtual {p1}, Lru/rocketbank/core/model/transfers/Template$ProviderPayment$FieldPayment;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "field.name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/rocketbank/core/model/transfers/Template$ProviderPayment$FieldPayment;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setAmount(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->amount$delegate:Ljava/util/Map;

    sget-object v1, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setBank_name(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->bank_name$delegate:Ljava/util/Map;

    sget-object v1, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setBesp(Ljava/lang/Boolean;)V
    .locals 2

    .line 49
    iput-object p1, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->besp:Ljava/lang/Boolean;

    .line 50
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->map:Ljava/util/Map;

    const-string v1, "besp"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setBik(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->bik$delegate:Ljava/util/Map;

    sget-object v1, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setCardAccount(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->cardAccount:Ljava/lang/String;

    return-void
.end method

.method public final setCorr_bank(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->corr_bank$delegate:Ljava/util/Map;

    sget-object v1, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setCorr_number(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->corr_number$delegate:Ljava/util/Map;

    sget-object v1, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setGkh(Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->isGkh:Z

    return-void
.end method

.method public final setInn(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->inn$delegate:Ljava/util/Map;

    sget-object v1, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setKpp(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->kpp$delegate:Ljava/util/Map;

    sget-object v1, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setLogo(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->logo$delegate:Ljava/util/Map;

    sget-object v1, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setPurpose(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->purpose$delegate:Ljava/util/Map;

    sget-object v1, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setRecipient_name(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->recipient_name$delegate:Ljava/util/Map;

    sget-object v1, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setRemittance_kind(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->remittance_kind:Ljava/lang/String;

    return-void
.end method

.method public final setVat(Ljava/lang/Boolean;)V
    .locals 2

    .line 42
    iput-object p1, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->isVat:Ljava/lang/Boolean;

    .line 43
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->map:Ljava/util/Map;

    const-string v1, "nds"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object p2, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->map:Ljava/util/Map;

    invoke-static {p2}, Lru/rocketbank/core/utils/CollectionUtilsKt;->toBundle(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 72
    iget-object p2, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->cardAccount:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object p2, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->remittance_kind:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-boolean p2, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->isGkh:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
