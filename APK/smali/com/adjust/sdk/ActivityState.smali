.class public Lcom/adjust/sdk/ActivityState;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x7d728a246d4bab64L


# instance fields
.field protected askingAttribution:Z

.field protected enabled:Z

.field protected eventCount:I

.field protected lastActivity:J

.field protected lastInterval:J

.field private transient logger:Lcom/adjust/sdk/ILogger;

.field protected sessionCount:I

.field protected sessionLength:J

.field protected subsessionCount:I

.field protected timeSpent:J

.field protected uuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "uuid"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "enabled"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "askingAttribution"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "eventCount"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "sessionCount"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "subsessionCount"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "sessionLength"

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "timeSpent"

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "lastActivity"

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "lastInterval"

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/adjust/sdk/ActivityState;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/ActivityState;->logger:Lcom/adjust/sdk/ILogger;

    invoke-static {}, Lcom/adjust/sdk/Util;->createUuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/ActivityState;->uuid:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adjust/sdk/ActivityState;->enabled:Z

    iput-boolean v1, p0, Lcom/adjust/sdk/ActivityState;->askingAttribution:Z

    iput v1, p0, Lcom/adjust/sdk/ActivityState;->eventCount:I

    iput v1, p0, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    iput-wide v2, p0, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    iput-wide v2, p0, Lcom/adjust/sdk/ActivityState;->timeSpent:J

    iput-wide v2, p0, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    iput-wide v2, p0, Lcom/adjust/sdk/ActivityState;->lastInterval:J

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 7

    const/4 v6, 0x0

    const-wide/16 v4, -0x1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    const-string v1, "eventCount"

    invoke-static {v0, v1, v6}, Lcom/adjust/sdk/Util;->readIntField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/adjust/sdk/ActivityState;->eventCount:I

    const-string v1, "sessionCount"

    invoke-static {v0, v1, v6}, Lcom/adjust/sdk/Util;->readIntField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    const-string v1, "subsessionCount"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/adjust/sdk/Util;->readIntField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    const-string v1, "sessionLength"

    invoke-static {v0, v1, v4, v5}, Lcom/adjust/sdk/Util;->readLongField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    const-string v1, "timeSpent"

    invoke-static {v0, v1, v4, v5}, Lcom/adjust/sdk/Util;->readLongField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/adjust/sdk/ActivityState;->timeSpent:J

    const-string v1, "lastActivity"

    invoke-static {v0, v1, v4, v5}, Lcom/adjust/sdk/Util;->readLongField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    const-string v1, "lastInterval"

    invoke-static {v0, v1, v4, v5}, Lcom/adjust/sdk/Util;->readLongField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/adjust/sdk/ActivityState;->lastInterval:J

    const-string v1, "uuid"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/adjust/sdk/Util;->readStringField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adjust/sdk/ActivityState;->uuid:Ljava/lang/String;

    const-string v1, "enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adjust/sdk/Util;->readBooleanField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/adjust/sdk/ActivityState;->enabled:Z

    const-string v1, "askingAttribution"

    invoke-static {v0, v1, v6}, Lcom/adjust/sdk/Util;->readBooleanField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adjust/sdk/ActivityState;->askingAttribution:Z

    iget-object v0, p0, Lcom/adjust/sdk/ActivityState;->uuid:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/adjust/sdk/Util;->createUuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/ActivityState;->uuid:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private static stamp(J)Ljava/lang/String;
    .locals 6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%02d:%02d:%02d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0xb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0xd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/adjust/sdk/ActivityState;

    iget-object v2, p0, Lcom/adjust/sdk/ActivityState;->uuid:Ljava/lang/String;

    iget-object v3, p1, Lcom/adjust/sdk/ActivityState;->uuid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-boolean v2, p0, Lcom/adjust/sdk/ActivityState;->enabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p1, Lcom/adjust/sdk/ActivityState;->enabled:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalBoolean(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-boolean v2, p0, Lcom/adjust/sdk/ActivityState;->askingAttribution:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p1, Lcom/adjust/sdk/ActivityState;->askingAttribution:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalBoolean(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget v2, p0, Lcom/adjust/sdk/ActivityState;->eventCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/adjust/sdk/ActivityState;->eventCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalInt(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget v2, p0, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalInt(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    iget v2, p0, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalInt(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    goto/16 :goto_0

    :cond_9
    iget-wide v2, p0, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v4, p1, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalLong(Ljava/lang/Long;Ljava/lang/Long;)Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    goto/16 :goto_0

    :cond_a
    iget-wide v2, p0, Lcom/adjust/sdk/ActivityState;->timeSpent:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v4, p1, Lcom/adjust/sdk/ActivityState;->timeSpent:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalLong(Ljava/lang/Long;Ljava/lang/Long;)Z

    move-result v2

    if-nez v2, :cond_b

    move v0, v1

    goto/16 :goto_0

    :cond_b
    iget-wide v2, p0, Lcom/adjust/sdk/ActivityState;->lastInterval:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v4, p1, Lcom/adjust/sdk/ActivityState;->lastInterval:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalLong(Ljava/lang/Long;Ljava/lang/Long;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/adjust/sdk/ActivityState;->uuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/adjust/sdk/Util;->hashString(Ljava/lang/String;)I

    move-result v0

    add-int/lit16 v0, v0, 0x275

    mul-int/lit8 v0, v0, 0x25

    iget-boolean v1, p0, Lcom/adjust/sdk/ActivityState;->enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/adjust/sdk/Util;->hashBoolean(Ljava/lang/Boolean;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-boolean v1, p0, Lcom/adjust/sdk/ActivityState;->askingAttribution:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/adjust/sdk/Util;->hashBoolean(Ljava/lang/Boolean;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lcom/adjust/sdk/ActivityState;->eventCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-wide v2, p0, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/adjust/sdk/Util;->hashLong(Ljava/lang/Long;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-wide v2, p0, Lcom/adjust/sdk/ActivityState;->timeSpent:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/adjust/sdk/Util;->hashLong(Ljava/lang/Long;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-wide v2, p0, Lcom/adjust/sdk/ActivityState;->lastInterval:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/adjust/sdk/Util;->hashLong(Ljava/lang/Long;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected resetSessionAttributes(J)V
    .locals 5

    const-wide/16 v2, 0x0

    const/4 v0, 0x1

    iput v0, p0, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    iput-wide v2, p0, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    iput-wide v2, p0, Lcom/adjust/sdk/ActivityState;->timeSpent:J

    iput-wide p1, p0, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/adjust/sdk/ActivityState;->lastInterval:J

    return-void
.end method

.method public shallowCopy()Lcom/adjust/sdk/ActivityState;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adjust/sdk/ActivityState;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    const-wide v6, 0x408f400000000000L    # 1000.0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "ec:%d sc:%d ssc:%d sl:%.1f ts:%.1f la:%s uuid:%s"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/adjust/sdk/ActivityState;->eventCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-wide v4, p0, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    long-to-double v4, v4

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-wide v4, p0, Lcom/adjust/sdk/ActivityState;->timeSpent:J

    long-to-double v4, v4

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-wide v4, p0, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    invoke-static {v4, v5}, Lcom/adjust/sdk/ActivityState;->stamp(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/adjust/sdk/ActivityState;->uuid:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
