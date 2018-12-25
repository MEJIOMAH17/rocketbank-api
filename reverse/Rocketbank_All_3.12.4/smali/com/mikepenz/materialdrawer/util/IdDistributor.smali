.class public final Lcom/mikepenz/materialdrawer/util/IdDistributor;
.super Ljava/lang/Object;
.source "IdDistributor.java"


# static fields
.field private static idDistributor:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, 0x77359400

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/mikepenz/materialdrawer/util/IdDistributor;->idDistributor:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static checkIds(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/mikepenz/materialdrawer/model/interfaces/Identifyable;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 23
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/materialdrawer/model/interfaces/Identifyable;

    .line 1049
    invoke-interface {v1}, Lcom/mikepenz/materialdrawer/model/interfaces/Identifyable;->getIdentifier()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1050
    sget-object v2, Lcom/mikepenz/materialdrawer/util/IdDistributor;->idDistributor:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/mikepenz/materialdrawer/model/interfaces/Identifyable;->withIdentifier(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static varargs checkIds([Lcom/mikepenz/materialdrawer/model/interfaces/Identifyable;)[Lcom/mikepenz/materialdrawer/model/interfaces/Identifyable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/mikepenz/materialdrawer/model/interfaces/Identifyable;",
            ">([TT;)[TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 36
    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p0, v0

    .line 2049
    invoke-interface {v2}, Lcom/mikepenz/materialdrawer/model/interfaces/Identifyable;->getIdentifier()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 2050
    sget-object v3, Lcom/mikepenz/materialdrawer/util/IdDistributor;->idDistributor:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/mikepenz/materialdrawer/model/interfaces/Identifyable;->withIdentifier(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method
