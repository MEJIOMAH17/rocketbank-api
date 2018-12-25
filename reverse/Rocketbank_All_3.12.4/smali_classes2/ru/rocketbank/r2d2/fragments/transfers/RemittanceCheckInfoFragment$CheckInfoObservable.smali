.class public final Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$CheckInfoObservable;
.super Lru/rocketbank/r2d2/utils/ViewModelObservable;
.source "RemittanceCheckInfoFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CheckInfoObservable"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRemittanceCheckInfoFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemittanceCheckInfoFragment.kt\nru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$CheckInfoObservable\n*L\n1#1,168:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final purpose$delegate:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$CheckInfoObservable;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "purpose"

    const-string v4, "getPurpose()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$CheckInfoObservable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 160
    invoke-direct {p0}, Lru/rocketbank/r2d2/utils/ViewModelObservable;-><init>()V

    const-string v1, "purpose"

    .line 163
    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$CheckInfoObservable$1;->INSTANCE:Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$CheckInfoObservable$1;

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function1;

    const/16 v2, 0x43

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lru/rocketbank/r2d2/utils/ViewModelObservable;->putField$default(Lru/rocketbank/r2d2/utils/ViewModelObservable;Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    .line 166
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$CheckInfoObservable;->getFields()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$CheckInfoObservable;->purpose$delegate:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final getPurpose()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;
    .locals 3
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$CheckInfoObservable;->purpose$delegate:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$CheckInfoObservable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v1}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/AbstractList$Companion;->getOrImplicitDefaultNullable(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    return-object v0
.end method
