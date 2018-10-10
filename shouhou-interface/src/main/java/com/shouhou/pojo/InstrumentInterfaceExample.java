package com.shouhou.pojo;

import java.util.ArrayList;
import java.util.List;

public class InstrumentInterfaceExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public InstrumentInterfaceExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andInterfaceUuidIsNull() {
            addCriterion("interface_uuid is null");
            return (Criteria) this;
        }

        public Criteria andInterfaceUuidIsNotNull() {
            addCriterion("interface_uuid is not null");
            return (Criteria) this;
        }

        public Criteria andInterfaceUuidEqualTo(String value) {
            addCriterion("interface_uuid =", value, "interfaceUuid");
            return (Criteria) this;
        }

        public Criteria andInterfaceUuidNotEqualTo(String value) {
            addCriterion("interface_uuid <>", value, "interfaceUuid");
            return (Criteria) this;
        }

        public Criteria andInterfaceUuidGreaterThan(String value) {
            addCriterion("interface_uuid >", value, "interfaceUuid");
            return (Criteria) this;
        }

        public Criteria andInterfaceUuidGreaterThanOrEqualTo(String value) {
            addCriterion("interface_uuid >=", value, "interfaceUuid");
            return (Criteria) this;
        }

        public Criteria andInterfaceUuidLessThan(String value) {
            addCriterion("interface_uuid <", value, "interfaceUuid");
            return (Criteria) this;
        }

        public Criteria andInterfaceUuidLessThanOrEqualTo(String value) {
            addCriterion("interface_uuid <=", value, "interfaceUuid");
            return (Criteria) this;
        }

        public Criteria andInterfaceUuidLike(String value) {
            addCriterion("interface_uuid like", value, "interfaceUuid");
            return (Criteria) this;
        }

        public Criteria andInterfaceUuidNotLike(String value) {
            addCriterion("interface_uuid not like", value, "interfaceUuid");
            return (Criteria) this;
        }

        public Criteria andInterfaceUuidIn(List<String> values) {
            addCriterion("interface_uuid in", values, "interfaceUuid");
            return (Criteria) this;
        }

        public Criteria andInterfaceUuidNotIn(List<String> values) {
            addCriterion("interface_uuid not in", values, "interfaceUuid");
            return (Criteria) this;
        }

        public Criteria andInterfaceUuidBetween(String value1, String value2) {
            addCriterion("interface_uuid between", value1, value2, "interfaceUuid");
            return (Criteria) this;
        }

        public Criteria andInterfaceUuidNotBetween(String value1, String value2) {
            addCriterion("interface_uuid not between", value1, value2, "interfaceUuid");
            return (Criteria) this;
        }

        public Criteria andInterfaceNameIsNull() {
            addCriterion("interface_name is null");
            return (Criteria) this;
        }

        public Criteria andInterfaceNameIsNotNull() {
            addCriterion("interface_name is not null");
            return (Criteria) this;
        }

        public Criteria andInterfaceNameEqualTo(String value) {
            addCriterion("interface_name =", value, "interfaceName");
            return (Criteria) this;
        }

        public Criteria andInterfaceNameNotEqualTo(String value) {
            addCriterion("interface_name <>", value, "interfaceName");
            return (Criteria) this;
        }

        public Criteria andInterfaceNameGreaterThan(String value) {
            addCriterion("interface_name >", value, "interfaceName");
            return (Criteria) this;
        }

        public Criteria andInterfaceNameGreaterThanOrEqualTo(String value) {
            addCriterion("interface_name >=", value, "interfaceName");
            return (Criteria) this;
        }

        public Criteria andInterfaceNameLessThan(String value) {
            addCriterion("interface_name <", value, "interfaceName");
            return (Criteria) this;
        }

        public Criteria andInterfaceNameLessThanOrEqualTo(String value) {
            addCriterion("interface_name <=", value, "interfaceName");
            return (Criteria) this;
        }

        public Criteria andInterfaceNameLike(String value) {
            addCriterion("interface_name like", value, "interfaceName");
            return (Criteria) this;
        }

        public Criteria andInterfaceNameNotLike(String value) {
            addCriterion("interface_name not like", value, "interfaceName");
            return (Criteria) this;
        }

        public Criteria andInterfaceNameIn(List<String> values) {
            addCriterion("interface_name in", values, "interfaceName");
            return (Criteria) this;
        }

        public Criteria andInterfaceNameNotIn(List<String> values) {
            addCriterion("interface_name not in", values, "interfaceName");
            return (Criteria) this;
        }

        public Criteria andInterfaceNameBetween(String value1, String value2) {
            addCriterion("interface_name between", value1, value2, "interfaceName");
            return (Criteria) this;
        }

        public Criteria andInterfaceNameNotBetween(String value1, String value2) {
            addCriterion("interface_name not between", value1, value2, "interfaceName");
            return (Criteria) this;
        }

        public Criteria andInterfaceFilepathIsNull() {
            addCriterion("interface_filepath is null");
            return (Criteria) this;
        }

        public Criteria andInterfaceFilepathIsNotNull() {
            addCriterion("interface_filepath is not null");
            return (Criteria) this;
        }

        public Criteria andInterfaceFilepathEqualTo(String value) {
            addCriterion("interface_filepath =", value, "interfaceFilepath");
            return (Criteria) this;
        }

        public Criteria andInterfaceFilepathNotEqualTo(String value) {
            addCriterion("interface_filepath <>", value, "interfaceFilepath");
            return (Criteria) this;
        }

        public Criteria andInterfaceFilepathGreaterThan(String value) {
            addCriterion("interface_filepath >", value, "interfaceFilepath");
            return (Criteria) this;
        }

        public Criteria andInterfaceFilepathGreaterThanOrEqualTo(String value) {
            addCriterion("interface_filepath >=", value, "interfaceFilepath");
            return (Criteria) this;
        }

        public Criteria andInterfaceFilepathLessThan(String value) {
            addCriterion("interface_filepath <", value, "interfaceFilepath");
            return (Criteria) this;
        }

        public Criteria andInterfaceFilepathLessThanOrEqualTo(String value) {
            addCriterion("interface_filepath <=", value, "interfaceFilepath");
            return (Criteria) this;
        }

        public Criteria andInterfaceFilepathLike(String value) {
            addCriterion("interface_filepath like", value, "interfaceFilepath");
            return (Criteria) this;
        }

        public Criteria andInterfaceFilepathNotLike(String value) {
            addCriterion("interface_filepath not like", value, "interfaceFilepath");
            return (Criteria) this;
        }

        public Criteria andInterfaceFilepathIn(List<String> values) {
            addCriterion("interface_filepath in", values, "interfaceFilepath");
            return (Criteria) this;
        }

        public Criteria andInterfaceFilepathNotIn(List<String> values) {
            addCriterion("interface_filepath not in", values, "interfaceFilepath");
            return (Criteria) this;
        }

        public Criteria andInterfaceFilepathBetween(String value1, String value2) {
            addCriterion("interface_filepath between", value1, value2, "interfaceFilepath");
            return (Criteria) this;
        }

        public Criteria andInterfaceFilepathNotBetween(String value1, String value2) {
            addCriterion("interface_filepath not between", value1, value2, "interfaceFilepath");
            return (Criteria) this;
        }

        public Criteria andInstrumentIdIsNull() {
            addCriterion("instrument_id is null");
            return (Criteria) this;
        }

        public Criteria andInstrumentIdIsNotNull() {
            addCriterion("instrument_id is not null");
            return (Criteria) this;
        }

        public Criteria andInstrumentIdEqualTo(Integer value) {
            addCriterion("instrument_id =", value, "instrumentId");
            return (Criteria) this;
        }

        public Criteria andInstrumentIdNotEqualTo(Integer value) {
            addCriterion("instrument_id <>", value, "instrumentId");
            return (Criteria) this;
        }

        public Criteria andInstrumentIdGreaterThan(Integer value) {
            addCriterion("instrument_id >", value, "instrumentId");
            return (Criteria) this;
        }

        public Criteria andInstrumentIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("instrument_id >=", value, "instrumentId");
            return (Criteria) this;
        }

        public Criteria andInstrumentIdLessThan(Integer value) {
            addCriterion("instrument_id <", value, "instrumentId");
            return (Criteria) this;
        }

        public Criteria andInstrumentIdLessThanOrEqualTo(Integer value) {
            addCriterion("instrument_id <=", value, "instrumentId");
            return (Criteria) this;
        }

        public Criteria andInstrumentIdIn(List<Integer> values) {
            addCriterion("instrument_id in", values, "instrumentId");
            return (Criteria) this;
        }

        public Criteria andInstrumentIdNotIn(List<Integer> values) {
            addCriterion("instrument_id not in", values, "instrumentId");
            return (Criteria) this;
        }

        public Criteria andInstrumentIdBetween(Integer value1, Integer value2) {
            addCriterion("instrument_id between", value1, value2, "instrumentId");
            return (Criteria) this;
        }

        public Criteria andInstrumentIdNotBetween(Integer value1, Integer value2) {
            addCriterion("instrument_id not between", value1, value2, "instrumentId");
            return (Criteria) this;
        }

        public Criteria andInterfaceTypeIsNull() {
            addCriterion("interface_type is null");
            return (Criteria) this;
        }

        public Criteria andInterfaceTypeIsNotNull() {
            addCriterion("interface_type is not null");
            return (Criteria) this;
        }

        public Criteria andInterfaceTypeEqualTo(String value) {
            addCriterion("interface_type =", value, "interfaceType");
            return (Criteria) this;
        }

        public Criteria andInterfaceTypeNotEqualTo(String value) {
            addCriterion("interface_type <>", value, "interfaceType");
            return (Criteria) this;
        }

        public Criteria andInterfaceTypeGreaterThan(String value) {
            addCriterion("interface_type >", value, "interfaceType");
            return (Criteria) this;
        }

        public Criteria andInterfaceTypeGreaterThanOrEqualTo(String value) {
            addCriterion("interface_type >=", value, "interfaceType");
            return (Criteria) this;
        }

        public Criteria andInterfaceTypeLessThan(String value) {
            addCriterion("interface_type <", value, "interfaceType");
            return (Criteria) this;
        }

        public Criteria andInterfaceTypeLessThanOrEqualTo(String value) {
            addCriterion("interface_type <=", value, "interfaceType");
            return (Criteria) this;
        }

        public Criteria andInterfaceTypeLike(String value) {
            addCriterion("interface_type like", value, "interfaceType");
            return (Criteria) this;
        }

        public Criteria andInterfaceTypeNotLike(String value) {
            addCriterion("interface_type not like", value, "interfaceType");
            return (Criteria) this;
        }

        public Criteria andInterfaceTypeIn(List<String> values) {
            addCriterion("interface_type in", values, "interfaceType");
            return (Criteria) this;
        }

        public Criteria andInterfaceTypeNotIn(List<String> values) {
            addCriterion("interface_type not in", values, "interfaceType");
            return (Criteria) this;
        }

        public Criteria andInterfaceTypeBetween(String value1, String value2) {
            addCriterion("interface_type between", value1, value2, "interfaceType");
            return (Criteria) this;
        }

        public Criteria andInterfaceTypeNotBetween(String value1, String value2) {
            addCriterion("interface_type not between", value1, value2, "interfaceType");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}