.class public Lru/rocketbank/core/model/register/DeviceRegisterPhone;
.super Ljava/lang/Object;
.source "DeviceRegisterPhone.java"


# instance fields
.field private phone:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lru/rocketbank/core/model/register/DeviceRegisterPhone;->phone:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lru/rocketbank/core/model/register/DeviceRegisterPhone;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lru/rocketbank/core/model/register/DeviceRegisterPhone;->phone:Ljava/lang/String;

    return-void
.end method
