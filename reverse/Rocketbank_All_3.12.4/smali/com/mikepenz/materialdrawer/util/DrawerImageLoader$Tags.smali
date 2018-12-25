.class public final enum Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$Tags;
.super Ljava/lang/Enum;
.source "DrawerImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/materialdrawer/util/DrawerImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tags"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$Tags;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$Tags;

.field public static final enum ACCOUNT_HEADER:Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$Tags;

.field public static final enum PROFILE:Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$Tags;

.field public static final enum PROFILE_DRAWER_ITEM:Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$Tags;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 13
    new-instance v0, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$Tags;

    const-string v1, "PROFILE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$Tags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$Tags;->PROFILE:Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$Tags;

    .line 14
    new-instance v0, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$Tags;

    const-string v1, "PROFILE_DRAWER_ITEM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$Tags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$Tags;->PROFILE_DRAWER_ITEM:Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$Tags;

    .line 15
    new-instance v0, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$Tags;

    const-string v1, "ACCOUNT_HEADER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$Tags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$Tags;->ACCOUNT_HEADER:Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$Tags;

    const/4 v0, 0x3

    .line 12
    new-array v0, v0, [Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$Tags;

    sget-object v1, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$Tags;->PROFILE:Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$Tags;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$Tags;->PROFILE_DRAWER_ITEM:Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$Tags;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$Tags;->ACCOUNT_HEADER:Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$Tags;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$Tags;->$VALUES:[Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$Tags;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$Tags;
    .locals 1

    .line 12
    const-class v0, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$Tags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$Tags;

    return-object p0
.end method

.method public static values()[Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$Tags;
    .locals 1

    .line 12
    sget-object v0, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$Tags;->$VALUES:[Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$Tags;

    invoke-virtual {v0}, [Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$Tags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$Tags;

    return-object v0
.end method
