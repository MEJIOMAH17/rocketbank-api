.class public final Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;
.super Lru/rocketbank/r2d2/fragments/transfers/RequisitesObservable;
.source "TransferBankFragment.kt"

# interfaces
.implements Lru/rocketbank/r2d2/fragments/transfers/ToMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransferBankFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransferBankFragment.kt\nru/rocketbank/r2d2/fragments/transfers/IndividualObservable\n*L\n1#1,1301:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable$Companion;


# instance fields
.field private final materialAssistance$delegate:Lru/rocketbank/r2d2/utils/ViewModelObservable$DelegateObservable;

.field private materialAssistanceType:Ljava/lang/String;

.field private final purpose$delegate:Ljava/util/HashMap;

.field private final recipient_name$delegate:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "recipient_name"

    const-string v4, "getRecipient_name()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "purpose"

    const-string v4, "getPurpose()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "materialAssistance"

    const-string v4, "getMaterialAssistance()Ljava/lang/Boolean;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;->Companion:Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    const-string v0, "materialAssist"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1129
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/RequisitesObservable;-><init>()V

    const-string v2, "recipient_name"

    .line 1132
    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable$1;->INSTANCE:Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable$1;

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/16 v3, 0x46

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lru/rocketbank/r2d2/utils/ViewModelObservable;->putField$default(Lru/rocketbank/r2d2/utils/ViewModelObservable;Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    const-string v0, "purpose"

    .line 1133
    sget-object v1, Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable$2;->INSTANCE:Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable$2;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    new-instance v2, Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable$3;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable$3;-><init>(Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/16 v3, 0x43

    invoke-virtual {p0, v0, v3, v1, v2}, Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;->putField(Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    .line 1136
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;->getFields()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;->recipient_name$delegate:Ljava/util/HashMap;

    .line 1137
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;->getFields()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;->purpose$delegate:Ljava/util/HashMap;

    .line 1139
    new-instance v0, Lru/rocketbank/r2d2/utils/ViewModelObservable$DelegateObservable;

    move-object v1, p0

    check-cast v1, Landroid/databinding/BaseObservable;

    const/16 v2, 0x38

    invoke-direct {v0, v2, v1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$DelegateObservable;-><init>(ILandroid/databinding/BaseObservable;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;->materialAssistance$delegate:Lru/rocketbank/r2d2/utils/ViewModelObservable$DelegateObservable;

    .line 1142
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;->materialAssistanceType:Ljava/lang/String;

    return-void
.end method

.method public static final checkFio(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;->Companion:Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable$Companion;

    invoke-virtual {v0, p0}, Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable$Companion;->checkFio(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final getMaterialAssistance()Ljava/lang/Boolean;
    .locals 3
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;->materialAssistance$delegate:Lru/rocketbank/r2d2/utils/ViewModelObservable$DelegateObservable;

    sget-object v1, Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$DelegateObservable;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getMaterialAssistanceType()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .line 1142
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;->materialAssistanceType:Ljava/lang/String;

    return-object v0
.end method

.method public final getPurpose()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;
    .locals 3
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;->purpose$delegate:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/AbstractList$Companion;->getOrImplicitDefaultNullable(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    return-object v0
.end method

.method public final getRecipient_name()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;
    .locals 3
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;->recipient_name$delegate:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/AbstractList$Companion;->getOrImplicitDefaultNullable(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    return-object v0
.end method

.method public final setMaterialAssistance(Ljava/lang/Boolean;)V
    .locals 3

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;->materialAssistance$delegate:Lru/rocketbank/r2d2/utils/ViewModelObservable$DelegateObservable;

    sget-object v1, Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$DelegateObservable;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setMaterialAssistanceType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1142
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;->materialAssistanceType:Ljava/lang/String;

    return-void
.end method

.method public final toMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1146
    invoke-static {p0}, Lru/rocketbank/r2d2/fragments/transfers/ToMap$DefaultImpls;->toMap(Lru/rocketbank/r2d2/fragments/transfers/ToMap;)Ljava/util/Map;

    move-result-object v0

    .line 1147
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;->getMaterialAssistance()Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "purpose"

    .line 1148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;->getPurpose()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v3

    invoke-virtual {v3}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/transfers/IndividualObservable;->materialAssistanceType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
