.class public final Lru/rocketbank/r2d2/adapters/delivery/AddressItemData;
.super Ljava/lang/Object;
.source "AddressItemData.kt"


# instance fields
.field private final addresstext:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0}, Landroid/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/adapters/delivery/AddressItemData;->addresstext:Landroid/databinding/ObservableField;

    return-void
.end method


# virtual methods
.method public final getAddresstext()Landroid/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lru/rocketbank/r2d2/adapters/delivery/AddressItemData;->addresstext:Landroid/databinding/ObservableField;

    return-object v0
.end method
