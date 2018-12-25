.class public final Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;
.super Lru/rocketbank/r2d2/fragments/transfers/RequisitesObservable;
.source "TransferBankFragment.kt"

# interfaces
.implements Lru/rocketbank/r2d2/fragments/transfers/InnKpp;
.implements Lru/rocketbank/r2d2/fragments/transfers/ToMap;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransferBankFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransferBankFragment.kt\nru/rocketbank/r2d2/fragments/transfers/CorporateObservable\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1301:1\n624#2:1302\n713#2,2:1303\n*E\n*S KotlinDebug\n*F\n+ 1 TransferBankFragment.kt\nru/rocketbank/r2d2/fragments/transfers/CorporateObservable\n*L\n1232#1:1302\n1232#1,2:1303\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final accountPattern:Ljava/util/regex/Pattern;

.field private final documentIdPattern:Ljava/util/regex/Pattern;

.field private final elsPattern:Ljava/util/regex/Pattern;

.field private final gkhFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private gkhPeriod:Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;

.field private final gkhVisible:Landroid/databinding/ObservableBoolean;

.field private final gkh_account_number$delegate:Ljava/util/HashMap;

.field private final gkh_els$delegate:Ljava/util/HashMap;

.field private final gkh_mc_service_id$delegate:Ljava/util/HashMap;

.field private final gkh_payment_document_id$delegate:Ljava/util/HashMap;

.field private final gkh_payment_document_number$delegate:Ljava/util/HashMap;

.field private final gkh_period$delegate:Ljava/util/HashMap;

.field private final inn$delegate:Ljava/util/HashMap;

.field private final kpp$delegate:Ljava/util/HashMap;

.field private final paymentDocumentNumberPattern:Ljava/util/regex/Pattern;

.field private final purpose$delegate:Ljava/util/HashMap;

.field private final recipient_name$delegate:Ljava/util/HashMap;

.field private final serviceIdPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xa

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;

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

    const-class v2, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "kpp"

    const-string v4, "getKpp()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "recipient_name"

    const-string v4, "getRecipient_name()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "purpose"

    const-string v4, "getPurpose()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "gkh_account_number"

    const-string v4, "getGkh_account_number()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "gkh_period"

    const-string v4, "getGkh_period()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "gkh_els"

    const-string v4, "getGkh_els()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "gkh_payment_document_id"

    const-string v4, "getGkh_payment_document_id()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "gkh_payment_document_number"

    const-string v4, "getGkh_payment_document_number()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "gkh_mc_service_id"

    const-string v4, "getGkh_mc_service_id()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 1170
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/RequisitesObservable;-><init>()V

    .line 1172
    new-instance v0, Landroid/databinding/ObservableBoolean;

    const/4 v7, 0x0

    invoke-direct {v0, v7}, Landroid/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->gkhVisible:Landroid/databinding/ObservableBoolean;

    const-string v1, "inn"

    .line 1175
    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable$1;->INSTANCE:Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable$1;

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/16 v2, 0x2e

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lru/rocketbank/r2d2/utils/ViewModelObservable;->putField$default(Lru/rocketbank/r2d2/utils/ViewModelObservable;Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    const-string v1, "kpp"

    .line 1176
    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable$2;->INSTANCE:Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable$2;

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/16 v2, 0x35

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lru/rocketbank/r2d2/utils/ViewModelObservable;->putField$default(Lru/rocketbank/r2d2/utils/ViewModelObservable;Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    const-string v1, "recipient_name"

    .line 1177
    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable$3;->INSTANCE:Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable$3;

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function1;

    const/16 v2, 0x46

    const/4 v4, 0x0

    const/16 v5, 0x8

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lru/rocketbank/r2d2/utils/ViewModelObservable;->putField$default(Lru/rocketbank/r2d2/utils/ViewModelObservable;Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    const-string v1, "purpose"

    .line 1178
    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable$4;->INSTANCE:Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable$4;

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function1;

    const/16 v2, 0x43

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lru/rocketbank/r2d2/utils/ViewModelObservable;->putField$default(Lru/rocketbank/r2d2/utils/ViewModelObservable;Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    const-string v1, "gkh_account_number"

    .line 1180
    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable$5;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable$5;-><init>(Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/16 v2, 0x22

    const/4 v3, 0x0

    const/4 v5, 0x4

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lru/rocketbank/r2d2/utils/ViewModelObservable;->putField$default(Lru/rocketbank/r2d2/utils/ViewModelObservable;Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    const-string v0, "gkh_period"

    .line 1181
    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable$6;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable$6;-><init>(Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    sget-object v2, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable$7;->INSTANCE:Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable$7;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/16 v3, 0x27

    invoke-virtual {p0, v0, v3, v2, v1}, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->putField(Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    const-string v1, "gkh_payment_document_id"

    .line 1182
    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable$8;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable$8;-><init>(Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/16 v2, 0x25

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lru/rocketbank/r2d2/utils/ViewModelObservable;->putField$default(Lru/rocketbank/r2d2/utils/ViewModelObservable;Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    const-string v1, "gkh_payment_document_number"

    .line 1183
    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable$9;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable$9;-><init>(Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/16 v2, 0x26

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lru/rocketbank/r2d2/utils/ViewModelObservable;->putField$default(Lru/rocketbank/r2d2/utils/ViewModelObservable;Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    const-string v1, "gkh_mc_service_id"

    .line 1184
    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable$10;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable$10;-><init>(Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/16 v2, 0x24

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lru/rocketbank/r2d2/utils/ViewModelObservable;->putField$default(Lru/rocketbank/r2d2/utils/ViewModelObservable;Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    const-string v1, "gkh_els"

    .line 1185
    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable$11;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable$11;-><init>(Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/16 v2, 0x23

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lru/rocketbank/r2d2/utils/ViewModelObservable;->putField$default(Lru/rocketbank/r2d2/utils/ViewModelObservable;Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    .line 1187
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->gkhVisible:Landroid/databinding/ObservableBoolean;

    new-instance v1, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable$12;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable$12;-><init>(Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;)V

    check-cast v1, Landroid/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableBoolean;->addOnPropertyChangedCallback(Landroid/databinding/Observable$OnPropertyChangedCallback;)V

    .line 1200
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->getFields()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->inn$delegate:Ljava/util/HashMap;

    .line 1201
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->getFields()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->kpp$delegate:Ljava/util/HashMap;

    .line 1202
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->getFields()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->recipient_name$delegate:Ljava/util/HashMap;

    .line 1203
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->getFields()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->purpose$delegate:Ljava/util/HashMap;

    .line 1205
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->getFields()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->gkh_account_number$delegate:Ljava/util/HashMap;

    .line 1206
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->getFields()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->gkh_period$delegate:Ljava/util/HashMap;

    .line 1207
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->getFields()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->gkh_els$delegate:Ljava/util/HashMap;

    .line 1208
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->getFields()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->gkh_payment_document_id$delegate:Ljava/util/HashMap;

    .line 1209
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->getFields()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->gkh_payment_document_number$delegate:Ljava/util/HashMap;

    .line 1210
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->getFields()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->gkh_mc_service_id$delegate:Ljava/util/HashMap;

    const-string v0, "(.*)([0-9\u0430-\u044f\u0410-\u042fa-zA-Z]+)(.*)"

    .line 1212
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->accountPattern:Ljava/util/regex/Pattern;

    const-string v0, "\\d{2}[\u0430-\u044f\u0410-\u042fa-zA-Z]{2}\\d{6}-\\d{2}-\\d{4}"

    .line 1213
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->documentIdPattern:Ljava/util/regex/Pattern;

    const-string v0, "\\d{2}[\u0430-\u044f\u0410-\u042fa-zA-Z]{2}\\d{6}-\\d{2}"

    .line 1214
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->serviceIdPattern:Ljava/util/regex/Pattern;

    const-string v0, "\\d{2}[\u0430-\u044f\u0410-\u042fa-zA-Z]{2}\\d{6}"

    .line 1215
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->elsPattern:Ljava/util/regex/Pattern;

    .line 1216
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->accountPattern:Ljava/util/regex/Pattern;

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->paymentDocumentNumberPattern:Ljava/util/regex/Pattern;

    const/4 v0, 0x5

    .line 1220
    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "gkh_account_number"

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->accountPattern:Ljava/util/regex/Pattern;

    .line 2037
    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v7

    const-string v1, "gkh_payment_document_id"

    .line 1221
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->documentIdPattern:Ljava/util/regex/Pattern;

    .line 3037
    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x1

    aput-object v3, v0, v1

    const-string v1, "gkh_mc_service_id"

    .line 1222
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->serviceIdPattern:Ljava/util/regex/Pattern;

    .line 4037
    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x2

    aput-object v3, v0, v1

    const-string v1, "gkh_els"

    .line 1223
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->elsPattern:Ljava/util/regex/Pattern;

    .line 5037
    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x3

    aput-object v3, v0, v1

    const-string v1, "gkh_payment_document_number"

    .line 1224
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->paymentDocumentNumberPattern:Ljava/util/regex/Pattern;

    .line 6037
    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x4

    aput-object v3, v0, v1

    .line 1220
    invoke-static {v0}, Lkotlin/collections/AbstractList$Companion;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->gkhFields:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$checkGkhField(Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1170
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->checkGkhField(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$validatePeriod(Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;Ljava/lang/String;)Z
    .locals 0

    .line 1170
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->validatePeriod(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private final checkGkhField(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1228
    check-cast p1, Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    if-nez v2, :cond_3

    .line 1229
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->gkhFields:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/regex/Pattern;

    if-eqz p2, :cond_2

    .line 1230
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-ne p1, v1, :cond_2

    return v1

    :cond_2
    return v0

    .line 1232
    :cond_3
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->gkhFields:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1302
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/Collection;

    .line 1303
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 1232
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->getFields()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    check-cast v3, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-virtual {v3}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_7

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    move v3, v0

    goto :goto_4

    :cond_7
    :goto_3
    move v3, v1

    :goto_4
    xor-int/2addr v3, v1

    if-eqz v3, :cond_4

    invoke-interface {p2, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1304
    :cond_8
    check-cast p2, Ljava/util/List;

    check-cast p2, Ljava/util/Collection;

    .line 1233
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p1

    if-lez p1, :cond_9

    return v1

    :cond_9
    return v0
.end method

.method private final validatePeriod(Ljava/lang/String;)Z
    .locals 2

    .line 1238
    check-cast p1, Ljava/lang/CharSequence;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v0

    :goto_1
    if-nez p1, :cond_2

    return v0

    :cond_2
    return v1
.end method


# virtual methods
.method public final getGkhPeriod()Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;
    .locals 1

    .line 1218
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->gkhPeriod:Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;

    return-object v0
.end method

.method public final getGkhVisible()Landroid/databinding/ObservableBoolean;
    .locals 1

    .line 1172
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->gkhVisible:Landroid/databinding/ObservableBoolean;

    return-object v0
.end method

.method public final getGkh_account_number()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;
    .locals 3
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->gkh_account_number$delegate:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/AbstractList$Companion;->getOrImplicitDefaultNullable(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    return-object v0
.end method

.method public final getGkh_els()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;
    .locals 3
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->gkh_els$delegate:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/AbstractList$Companion;->getOrImplicitDefaultNullable(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    return-object v0
.end method

.method public final getGkh_mc_service_id()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;
    .locals 3
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->gkh_mc_service_id$delegate:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/AbstractList$Companion;->getOrImplicitDefaultNullable(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    return-object v0
.end method

.method public final getGkh_payment_document_id()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;
    .locals 3
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->gkh_payment_document_id$delegate:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/AbstractList$Companion;->getOrImplicitDefaultNullable(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    return-object v0
.end method

.method public final getGkh_payment_document_number()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;
    .locals 3
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->gkh_payment_document_number$delegate:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/AbstractList$Companion;->getOrImplicitDefaultNullable(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    return-object v0
.end method

.method public final getGkh_period()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;
    .locals 3
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->gkh_period$delegate:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

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

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->inn$delegate:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

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

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->kpp$delegate:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

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

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->purpose$delegate:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

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

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->recipient_name$delegate:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/AbstractList$Companion;->getOrImplicitDefaultNullable(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    return-object v0
.end method

.method public final setGkhPeriod(Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;)V
    .locals 0

    .line 1218
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->gkhPeriod:Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;

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

    .line 1242
    invoke-static {p0}, Lru/rocketbank/r2d2/fragments/transfers/ToMap$DefaultImpls;->toMap(Lru/rocketbank/r2d2/fragments/transfers/ToMap;)Ljava/util/Map;

    move-result-object v0

    .line 1243
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->gkhVisible:Landroid/databinding/ObservableBoolean;

    invoke-virtual {v1}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1244
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->gkhPeriod:Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;

    if-eqz v1, :cond_1

    .line 1245
    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate;->value()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "."

    aput-object v4, v3, v1

    const-string v1, ":"

    const/4 v8, 0x1

    aput-object v1, v3, v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "gkh_month"

    .line 1246
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "gkh_year"

    .line 1247
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v1, "gkh_account_number"

    .line 1250
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gkh_payment_document_id"

    .line 1251
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gkh_mc_service_id"

    .line 1252
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gkh_els"

    .line 1253
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gkh_payment_document_number"

    .line 1254
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gkh_year"

    .line 1255
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gkh_month"

    .line 1256
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-object v0
.end method
