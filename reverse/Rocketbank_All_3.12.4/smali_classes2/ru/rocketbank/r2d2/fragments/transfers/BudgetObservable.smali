.class public final Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;
.super Lru/rocketbank/r2d2/fragments/transfers/RequisitesObservable;
.source "TransferBankFragment.kt"

# interfaces
.implements Lru/rocketbank/r2d2/fragments/transfers/InnKpp;
.implements Lru/rocketbank/r2d2/fragments/transfers/ToMap;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransferBankFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransferBankFragment.kt\nru/rocketbank/r2d2/fragments/transfers/BudgetObservable\n*L\n1#1,1301:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final drawer_status$delegate:Ljava/util/HashMap;

.field private final from$delegate:Ljava/util/HashMap;

.field private final inn$delegate:Ljava/util/HashMap;

.field private final innNecessary:Landroid/databinding/ObservableBoolean;

.field private final inn_from$delegate:Ljava/util/HashMap;

.field private final isCustom:Landroid/databinding/ObservableBoolean;

.field private final kbk$delegate:Ljava/util/HashMap;

.field private final kpp$delegate:Ljava/util/HashMap;

.field private final oktmo$delegate:Ljava/util/HashMap;

.field private final purpose$delegate:Ljava/util/HashMap;

.field private final recipient_name$delegate:Ljava/util/HashMap;

.field private selectedStatus:Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;

.field private selectedTaxBasis:Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;

.field private final showTax:Landroid/databinding/ObservableBoolean;

.field private tax:Z

.field private final taxUinInnControl$delegate:Ljava/util/HashMap;

.field private final tax_basis$delegate:Ljava/util/HashMap;

.field private final tax_inn$delegate:Ljava/util/HashMap;

.field private final tax_period$delegate:Ljava/util/HashMap;

.field private tax_period_date:Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;

.field private final uin$delegate:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xe

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "inn"

    const-string v4, "getInn()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "inn_from"

    const-string v4, "getInn_from()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "kbk"

    const-string v4, "getKbk()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "kpp"

    const-string v4, "getKpp()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "from"

    const-string v4, "getFrom()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "uin"

    const-string v4, "getUin()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "oktmo"

    const-string v4, "getOktmo()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "recipient_name"

    const-string v4, "getRecipient_name()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "drawer_status"

    const-string v4, "getDrawer_status()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "tax_basis"

    const-string v4, "getTax_basis()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "tax_inn"

    const-string v4, "getTax_inn()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "tax_period"

    const-string v4, "getTax_period()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "purpose"

    const-string v4, "getPurpose()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "taxUinInnControl"

    const-string v4, "getTaxUinInnControl()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sput-object v0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;)V
    .locals 8

    const-string v0, "selectedTaxBasis"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectedStatus"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 975
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/RequisitesObservable;-><init>()V

    const-string v1, "inn"

    .line 978
    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable$1;->INSTANCE:Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable$1;

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/16 v2, 0x2e

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lru/rocketbank/r2d2/utils/ViewModelObservable;->putField$default(Lru/rocketbank/r2d2/utils/ViewModelObservable;Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    const-string v1, "inn_from"

    .line 979
    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable$2;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable$2;-><init>(Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/16 v2, 0x2f

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lru/rocketbank/r2d2/utils/ViewModelObservable;->putField$default(Lru/rocketbank/r2d2/utils/ViewModelObservable;Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    const-string v1, "kbk"

    .line 980
    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable$3;->INSTANCE:Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable$3;

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/16 v2, 0x33

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lru/rocketbank/r2d2/utils/ViewModelObservable;->putField$default(Lru/rocketbank/r2d2/utils/ViewModelObservable;Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    const-string v1, "kpp"

    .line 981
    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable$4;->INSTANCE:Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable$4;

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/16 v2, 0x35

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lru/rocketbank/r2d2/utils/ViewModelObservable;->putField$default(Lru/rocketbank/r2d2/utils/ViewModelObservable;Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    const-string v1, "from"

    .line 982
    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable$5;->INSTANCE:Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable$5;

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function1;

    const/16 v2, 0x20

    const/4 v4, 0x0

    const/16 v5, 0x8

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lru/rocketbank/r2d2/utils/ViewModelObservable;->putField$default(Lru/rocketbank/r2d2/utils/ViewModelObservable;Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    const-string v1, "uin"

    .line 983
    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable$6;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable$6;-><init>(Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/16 v2, 0x57

    const/4 v3, 0x0

    const/4 v5, 0x4

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lru/rocketbank/r2d2/utils/ViewModelObservable;->putField$default(Lru/rocketbank/r2d2/utils/ViewModelObservable;Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    const-string v1, "oktmo"

    .line 984
    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable$7;->INSTANCE:Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable$7;

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/16 v2, 0x3b

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lru/rocketbank/r2d2/utils/ViewModelObservable;->putField$default(Lru/rocketbank/r2d2/utils/ViewModelObservable;Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    const-string v1, "recipient_name"

    .line 985
    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable$8;->INSTANCE:Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable$8;

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function1;

    const/16 v2, 0x46

    const/4 v4, 0x0

    const/16 v5, 0x8

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lru/rocketbank/r2d2/utils/ViewModelObservable;->putField$default(Lru/rocketbank/r2d2/utils/ViewModelObservable;Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    const-string v1, "drawer_status"

    .line 986
    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable$9;->INSTANCE:Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable$9;

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function1;

    const/16 v2, 0x1c

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lru/rocketbank/r2d2/utils/ViewModelObservable;->putField$default(Lru/rocketbank/r2d2/utils/ViewModelObservable;Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    const-string v0, "tax_basis"

    .line 987
    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable$10;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable$10;-><init>(Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    sget-object v2, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable$11;->INSTANCE:Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable$11;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/16 v3, 0x50

    invoke-virtual {p0, v0, v3, v2, v1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->putField(Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    const-string v1, "tax_inn"

    .line 988
    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable$12;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable$12;-><init>(Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/16 v2, 0x51

    const/4 v3, 0x0

    const/4 v5, 0x4

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lru/rocketbank/r2d2/utils/ViewModelObservable;->putField$default(Lru/rocketbank/r2d2/utils/ViewModelObservable;Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    const-string v1, "tax_period"

    .line 989
    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable$13;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable$13;-><init>(Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/16 v2, 0x52

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lru/rocketbank/r2d2/utils/ViewModelObservable;->putField$default(Lru/rocketbank/r2d2/utils/ViewModelObservable;Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    const-string v1, "purpose"

    .line 990
    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable$14;->INSTANCE:Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable$14;

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function1;

    const/16 v2, 0x43

    const/4 v4, 0x0

    const/16 v5, 0x8

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lru/rocketbank/r2d2/utils/ViewModelObservable;->putField$default(Lru/rocketbank/r2d2/utils/ViewModelObservable;Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    const-string v1, "taxUinInnControl"

    .line 991
    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable$15;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable$15;-><init>(Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/16 v2, 0x4f

    const/4 v3, 0x0

    const/4 v5, 0x4

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lru/rocketbank/r2d2/utils/ViewModelObservable;->putField$default(Lru/rocketbank/r2d2/utils/ViewModelObservable;Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    .line 1008
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getFields()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->inn$delegate:Ljava/util/HashMap;

    .line 1009
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getFields()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->inn_from$delegate:Ljava/util/HashMap;

    .line 1010
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getFields()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->kbk$delegate:Ljava/util/HashMap;

    .line 1011
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getFields()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->kpp$delegate:Ljava/util/HashMap;

    .line 1012
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getFields()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->from$delegate:Ljava/util/HashMap;

    .line 1013
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getFields()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->uin$delegate:Ljava/util/HashMap;

    .line 1014
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getFields()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->oktmo$delegate:Ljava/util/HashMap;

    .line 1015
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getFields()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->recipient_name$delegate:Ljava/util/HashMap;

    .line 1016
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getFields()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->drawer_status$delegate:Ljava/util/HashMap;

    .line 1017
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getFields()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->tax_basis$delegate:Ljava/util/HashMap;

    .line 1018
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getFields()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->tax_inn$delegate:Ljava/util/HashMap;

    .line 1019
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getFields()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->tax_period$delegate:Ljava/util/HashMap;

    .line 1020
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getFields()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->purpose$delegate:Ljava/util/HashMap;

    .line 1022
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getFields()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->taxUinInnControl$delegate:Ljava/util/HashMap;

    .line 1024
    new-instance v0, Landroid/databinding/ObservableBoolean;

    invoke-direct {v0}, Landroid/databinding/ObservableBoolean;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->isCustom:Landroid/databinding/ObservableBoolean;

    .line 1025
    new-instance v0, Landroid/databinding/ObservableBoolean;

    invoke-direct {v0}, Landroid/databinding/ObservableBoolean;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->showTax:Landroid/databinding/ObservableBoolean;

    .line 1026
    new-instance v0, Landroid/databinding/ObservableBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->innNecessary:Landroid/databinding/ObservableBoolean;

    .line 1052
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->selectedTaxBasis:Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;

    .line 1060
    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->selectedStatus:Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;

    return-void
.end method

.method private final isInnNecessary(Ljava/lang/String;)Z
    .locals 8

    .line 1075
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getKbk()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const-string v3, "182"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_4

    .line 1076
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-nez v0, :cond_3

    const-string v0, "0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    return v2

    :cond_3
    :goto_2
    return v1

    :cond_4
    return v1
.end method


# virtual methods
.method public final checkTaxOrCustom(ZZ)Z
    .locals 0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final checkTaxPeriod(Ljava/lang/String;)Z
    .locals 3

    .line 1029
    iget-boolean v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->tax:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 1030
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->isCustom:Landroid/databinding/ObservableBoolean;

    invoke-virtual {v0}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 1031
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    return v2

    .line 1033
    :cond_2
    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move p1, v1

    goto :goto_1

    :cond_4
    :goto_0
    move p1, v2

    :goto_1
    if-nez p1, :cond_5

    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->tax_period_date:Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;

    if-eqz p1, :cond_5

    return v2

    :cond_5
    return v1
.end method

.method public final checkUinAndInn(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .line 1081
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getKbk()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const-string v3, "182"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_b

    .line 1082
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    const-string v0, "0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    if-eqz p2, :cond_3

    .line 1083
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0xc

    if-ne v0, v3, :cond_3

    return v1

    :cond_3
    if-eqz p1, :cond_4

    .line 1086
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    if-nez p1, :cond_5

    goto :goto_3

    .line 1087
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0x14

    if-eq v0, v3, :cond_7

    :goto_3
    if-nez p1, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x19

    if-ne p1, v0, :cond_a

    :cond_7
    check-cast p2, Ljava/lang/CharSequence;

    if-eqz p2, :cond_9

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_8

    goto :goto_4

    :cond_8
    move p1, v2

    goto :goto_5

    :cond_9
    :goto_4
    move p1, v1

    :goto_5
    if-eqz p1, :cond_a

    return v1

    :cond_a
    :goto_6
    return v2

    :cond_b
    return v1
.end method

.method public final getDrawer_status()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;
    .locals 3
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->drawer_status$delegate:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/AbstractList$Companion;->getOrImplicitDefaultNullable(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    return-object v0
.end method

.method public final getFrom()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;
    .locals 3
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->from$delegate:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/AbstractList$Companion;->getOrImplicitDefaultNullable(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    return-object v0
.end method

.method public final getInn()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;
    .locals 3
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->inn$delegate:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/AbstractList$Companion;->getOrImplicitDefaultNullable(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    return-object v0
.end method

.method public final getInnNecessary()Landroid/databinding/ObservableBoolean;
    .locals 1

    .line 1026
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->innNecessary:Landroid/databinding/ObservableBoolean;

    return-object v0
.end method

.method public final getInn_from()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;
    .locals 3
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->inn_from$delegate:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/AbstractList$Companion;->getOrImplicitDefaultNullable(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    return-object v0
.end method

.method public final getKbk()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;
    .locals 3
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->kbk$delegate:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/AbstractList$Companion;->getOrImplicitDefaultNullable(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    return-object v0
.end method

.method public final getKpp()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;
    .locals 3
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->kpp$delegate:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/AbstractList$Companion;->getOrImplicitDefaultNullable(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    return-object v0
.end method

.method public final getOktmo()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;
    .locals 3
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->oktmo$delegate:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/AbstractList$Companion;->getOrImplicitDefaultNullable(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    return-object v0
.end method

.method public final getPurpose()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;
    .locals 3
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->purpose$delegate:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xc

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

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->recipient_name$delegate:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/AbstractList$Companion;->getOrImplicitDefaultNullable(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    return-object v0
.end method

.method public final getSelectedStatus()Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;
    .locals 1
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .line 1060
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->selectedStatus:Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;

    return-object v0
.end method

.method public final getSelectedTaxBasis()Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;
    .locals 1
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .line 1052
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->selectedTaxBasis:Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;

    return-object v0
.end method

.method public final getShowTax()Landroid/databinding/ObservableBoolean;
    .locals 1

    .line 1025
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->showTax:Landroid/databinding/ObservableBoolean;

    return-object v0
.end method

.method public final getTax()Z
    .locals 1
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .line 994
    iget-boolean v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->tax:Z

    return v0
.end method

.method public final getTaxUinInnControl()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;
    .locals 3
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->taxUinInnControl$delegate:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/AbstractList$Companion;->getOrImplicitDefaultNullable(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    return-object v0
.end method

.method public final getTax_basis()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;
    .locals 3
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->tax_basis$delegate:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/AbstractList$Companion;->getOrImplicitDefaultNullable(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    return-object v0
.end method

.method public final getTax_inn()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;
    .locals 3
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->tax_inn$delegate:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/AbstractList$Companion;->getOrImplicitDefaultNullable(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    return-object v0
.end method

.method public final getTax_period()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;
    .locals 3
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->tax_period$delegate:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/AbstractList$Companion;->getOrImplicitDefaultNullable(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    return-object v0
.end method

.method public final getTax_period_date()Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;
    .locals 1

    .line 1068
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->tax_period_date:Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;

    return-object v0
.end method

.method public final getUin()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;
    .locals 3
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->uin$delegate:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/AbstractList$Companion;->getOrImplicitDefaultNullable(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    return-object v0
.end method

.method public final isCustom()Landroid/databinding/ObservableBoolean;
    .locals 1

    .line 1024
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->isCustom:Landroid/databinding/ObservableBoolean;

    return-object v0
.end method

.method public final notifyPropertyChanged(I)V
    .locals 2

    const/16 v0, 0x2f

    const/16 v1, 0x4f

    if-eq p1, v0, :cond_1

    const/16 v0, 0x57

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1044
    :cond_0
    invoke-super {p0, v1}, Lru/rocketbank/r2d2/fragments/transfers/RequisitesObservable;->notifyPropertyChanged(I)V

    .line 1045
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->innNecessary:Landroid/databinding/ObservableBoolean;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getUin()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->isInnNecessary(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    goto :goto_0

    .line 1039
    :cond_1
    invoke-super {p0, v1}, Lru/rocketbank/r2d2/fragments/transfers/RequisitesObservable;->notifyPropertyChanged(I)V

    .line 1040
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getTax_inn()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v0

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getInn_from()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->setValue(Ljava/lang/String;)V

    const/16 v0, 0x51

    .line 1041
    invoke-super {p0, v0}, Lru/rocketbank/r2d2/fragments/transfers/RequisitesObservable;->notifyPropertyChanged(I)V

    .line 1048
    :goto_0
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/RequisitesObservable;->notifyPropertyChanged(I)V

    return-void
.end method

.method public final setSelectedStatus(Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1063
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getDrawer_status()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->setValue(Ljava/lang/String;)V

    .line 1064
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->selectedStatus:Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;

    const/16 p1, 0x48

    .line 1065
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->notifyPropertyChanged(I)V

    return-void
.end method

.method public final setSelectedTaxBasis(Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1055
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getTax_basis()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->setValue(Ljava/lang/String;)V

    .line 1056
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->selectedTaxBasis:Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;

    const/16 p1, 0x49

    .line 1057
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->notifyPropertyChanged(I)V

    return-void
.end method

.method public final setTax(Z)V
    .locals 7

    .line 997
    iput-boolean p1, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->tax:Z

    const/16 v0, 0x4d

    .line 998
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->notifyPropertyChanged(I)V

    const/16 v0, 0x50

    .line 999
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->notifyPropertyChanged(I)V

    const/16 v0, 0x51

    .line 1000
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->notifyPropertyChanged(I)V

    const/16 v0, 0x52

    .line 1001
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->notifyPropertyChanged(I)V

    .line 1002
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getKbk()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "182"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1003
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getTax_inn()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object p1

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getInn_from()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->setValue(Ljava/lang/String;)V

    return-void

    .line 1004
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getTax_inn()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public final setTax_period_date(Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;)V
    .locals 1

    .line 1070
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->tax_period_date:Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;

    .line 1071
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getTax_period()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public final toMap()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1096
    invoke-static {p0}, Lru/rocketbank/r2d2/fragments/transfers/ToMap$DefaultImpls;->toMap(Lru/rocketbank/r2d2/fragments/transfers/ToMap;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "drawer_status"

    .line 1098
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->selectedStatus:Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    iget-boolean v1, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->tax:Z

    if-eqz v1, :cond_0

    const-string v1, "tax_basis"

    .line 1100
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->selectedTaxBasis:Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->tax_period_date:Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;

    if-eqz v1, :cond_3

    const-string v2, "tax_period"

    .line 1102
    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;->value()Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    const-string v5, "."

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "tax_period_kind"

    .line 1103
    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;->kind()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v1, "tax_inn"

    .line 1106
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tax_basis"

    .line 1107
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getKbk()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    const-string v3, "153"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "tax_period"

    .line 1109
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v1, "custom_code"

    .line 1111
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getTax_period()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v2

    invoke-virtual {v2}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getCleanValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    const-string v1, "taxUinInnControl"

    .line 1114
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
