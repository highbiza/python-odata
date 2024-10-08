<%
  from datetime import datetime
  now = datetime.now().strftime('%Y/%m/%d %H:%M')
  generated = f"Generated on {now} from {metadata_url}"
  padding = "*" * (len(generated) + 1)
%>\
# ${padding}
# Data classes automatically generated by python-odata library
# ${generated}
#
# Please do not manually modify this file as any changes you make
# will be overwritten when the file is generated again.
# ${padding}

import datetime
import uuid
import decimal

from enum import Enum

from odata.entity import EntityBase
from odata.property import StringProperty, IntegerProperty, NavigationProperty, DatetimeProperty, DecimalProperty, FloatProperty, BooleanProperty, UUIDProperty
from odata.enumtype import EnumType, EnumTypeProperty

class ReflectionBase(EntityBase):
    pass

# ************ Start enum type definitions ************
%for type_name in enum_types:
<%include file="enum_entity.mako" args="name=type_name, entity=enum_types[type_name]"/>
%endfor
# ************ End enum type definitions ************

# ************ Start type definitions ************
%for type_name in types:
<%include file="entity.mako" args="name=type_name, entity=types[type_name]"/>
%endfor
# ************ End type definitions ************


# ************ Start entity definitions ************
%for entity in entities:
<%include file="entity.mako" args="name=entity, entity=entities[entity]"/>
%endfor
# ************ End entity definitions ************

