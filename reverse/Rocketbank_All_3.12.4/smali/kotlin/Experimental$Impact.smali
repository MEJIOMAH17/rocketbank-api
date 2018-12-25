.class public final enum Lkotlin/Experimental$Impact;
.super Ljava/lang/Enum;
.source "Experimental.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/Experimental;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Impact"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/Experimental$Impact;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlin/Experimental$Impact;

.field public static final enum COMPILATION:Lkotlin/Experimental$Impact;

.field public static final enum LINKAGE:Lkotlin/Experimental$Impact;

.field public static final enum RUNTIME:Lkotlin/Experimental$Impact;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/Experimental$Impact;

    new-instance v1, Lkotlin/Experimental$Impact;

    const-string v2, "COMPILATION"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lkotlin/Experimental$Impact;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/Experimental$Impact;->COMPILATION:Lkotlin/Experimental$Impact;

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/Experimental$Impact;

    const-string v2, "LINKAGE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lkotlin/Experimental$Impact;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/Experimental$Impact;->LINKAGE:Lkotlin/Experimental$Impact;

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/Experimental$Impact;

    const-string v2, "RUNTIME"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lkotlin/Experimental$Impact;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/Experimental$Impact;->RUNTIME:Lkotlin/Experimental$Impact;

    aput-object v1, v0, v3

    sput-object v0, Lkotlin/Experimental$Impact;->$VALUES:[Lkotlin/Experimental$Impact;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/Experimental$Impact;
    .locals 1

    const-class v0, Lkotlin/Experimental$Impact;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/Experimental$Impact;

    return-object p0
.end method

.method public static values()[Lkotlin/Experimental$Impact;
    .locals 1

    sget-object v0, Lkotlin/Experimental$Impact;->$VALUES:[Lkotlin/Experimental$Impact;

    invoke-virtual {v0}, [Lkotlin/Experimental$Impact;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/Experimental$Impact;

    return-object v0
.end method
