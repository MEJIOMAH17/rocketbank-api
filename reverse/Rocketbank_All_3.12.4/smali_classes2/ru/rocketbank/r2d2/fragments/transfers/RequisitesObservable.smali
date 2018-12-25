.class public abstract Lru/rocketbank/r2d2/fragments/transfers/RequisitesObservable;
.super Lru/rocketbank/r2d2/utils/ViewModelObservable;
.source "TransferBankFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/fragments/transfers/RequisitesObservable$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/fragments/transfers/RequisitesObservable$Companion;

.field public static final kindObservable:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/RequisitesObservable$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/fragments/transfers/RequisitesObservable$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/fragments/transfers/RequisitesObservable;->Companion:Lru/rocketbank/r2d2/fragments/transfers/RequisitesObservable$Companion;

    .line 969
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0}, Landroid/databinding/ObservableField;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/fragments/transfers/RequisitesObservable;->kindObservable:Landroid/databinding/ObservableField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 967
    invoke-direct {p0}, Lru/rocketbank/r2d2/utils/ViewModelObservable;-><init>()V

    return-void
.end method
